package com.parzivail.pswg.entity;

import com.parzivail.pswg.client.input.ShipControls;
import com.parzivail.pswg.container.SwgEntities;
import com.parzivail.pswg.container.SwgPackets;
import com.parzivail.pswg.entity.data.TrackedDataHandlers;
import com.parzivail.pswg.util.ClientUtil;
import com.parzivail.pswg.util.EntityUtil;
import com.parzivail.pswg.util.MathUtil;
import com.parzivail.util.entity.FlyingVehicle;
import com.parzivail.util.math.QuatUtil;
import io.netty.buffer.Unpooled;
import net.fabricmc.api.EnvType;
import net.fabricmc.api.Environment;
import net.fabricmc.fabric.api.network.ClientSidePacketRegistry;
import net.fabricmc.fabric.api.network.PacketContext;
import net.minecraft.client.util.math.Vector3f;
import net.minecraft.entity.*;
import net.minecraft.entity.data.DataTracker;
import net.minecraft.entity.data.TrackedData;
import net.minecraft.entity.data.TrackedDataHandlerRegistry;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.network.Packet;
import net.minecraft.network.packet.s2c.play.EntitySpawnS2CPacket;
import net.minecraft.util.Hand;
import net.minecraft.util.PacketByteBuf;
import net.minecraft.util.math.Box;
import net.minecraft.util.math.MathHelper;
import net.minecraft.util.math.Quaternion;
import net.minecraft.util.math.Vec3d;
import net.minecraft.world.World;

import javax.annotation.Nullable;
import java.util.EnumSet;
import java.util.List;

public class ShipEntity extends Entity implements FlyingVehicle
{
	private static final TrackedData<Quaternion> ROTATION = DataTracker.registerData(ShipEntity.class, TrackedDataHandlers.QUATERNION);
	private static final TrackedData<Float> THROTTLE = DataTracker.registerData(ShipEntity.class, TrackedDataHandlerRegistry.FLOAT);
	private static final TrackedData<Short> CONTROLS = DataTracker.registerData(ShipEntity.class, TrackedDataHandlers.SHORT);

	@Environment(EnvType.CLIENT)
	public ChaseCamEntity camera;

	private Quaternion viewRotation = new Quaternion(Quaternion.IDENTITY);
	private Quaternion viewPrevRotation = new Quaternion(Quaternion.IDENTITY);

	public ShipEntity(EntityType<?> type, World world)
	{
		super(type, world);
		this.inanimate = true;
	}

	@Override
	public void kill()
	{
		super.kill();

		if (world.isClient)
			killCamera();
	}

	private void killCamera()
	{
		if (camera != null)
			camera.kill();
	}

	public static void handleRotationPacket(PacketContext packetContext, PacketByteBuf attachedData)
	{
		float qa = attachedData.readFloat();
		float qb = attachedData.readFloat();
		float qc = attachedData.readFloat();
		float qd = attachedData.readFloat();

		packetContext.getTaskQueue().execute(() -> {
			PlayerEntity player = packetContext.getPlayer();
			ShipEntity ship = getShip(player);

			if (ship != null)
				ship.setRotation(new Quaternion(qb, qc, qd, qa));
		});
	}

	public static void handleControlPacket(PacketContext packetContext, PacketByteBuf attachedData)
	{
		short controls = attachedData.readShort();

		packetContext.getTaskQueue().execute(() -> {
			PlayerEntity player = packetContext.getPlayer();
			ShipEntity ship = getShip(player);

			if (ship != null)
				ship.acceptControlInput(ShipControls.unpack(controls));
		});
	}

	public static ShipEntity getShip(PlayerEntity player)
	{
		Entity vehicle = player.getVehicle();

		if (vehicle instanceof ShipEntity)
		{
			ShipEntity ship = (ShipEntity)vehicle;

			if (ship.getPrimaryPassenger() == player)
				return ship;
		}

		return null;
	}

	@Override
	protected boolean canClimb()
	{
		return false;
	}

	protected float getEyeHeight(EntityPose pose, EntityDimensions dimensions)
	{
		return getHeight() / 2f;
	}

	@Nullable
	@Override
	public Box getHardCollisionBox(Entity collidingEntity)
	{
		return collidingEntity.isPushable() ? collidingEntity.getBoundingBox() : null;
	}

	@Nullable
	@Override
	public Box getCollisionBox()
	{
		return this.getBoundingBox();
	}

	@Override
	public boolean isPushable()
	{
		return true;
	}

	@Override
	public boolean collides()
	{
		return !this.removed;
	}

	@Override
	protected void initDataTracker()
	{
		getDataTracker().startTracking(ROTATION, new Quaternion(Quaternion.IDENTITY));
		getDataTracker().startTracking(THROTTLE, 0f);
		getDataTracker().startTracking(CONTROLS, (short)0);
	}

	@Override
	protected void readCustomDataFromTag(CompoundTag tag)
	{
		if (tag.contains("rotation"))
			setRotation(QuatUtil.getQuaternion(tag.getCompound("rotation")));
		setThrottle(tag.getFloat("throttle"));
	}

	@Override
	protected void writeCustomDataToTag(CompoundTag tag)
	{
		CompoundTag qTag = new CompoundTag();
		QuatUtil.putQuaternion(qTag, getRotation());
		tag.put("rotation", qTag);

		tag.putFloat("throttle", getThrottle());
	}

	@Override
	public void tick()
	{
		super.tick();

		if (world.isClient)
		{
			if (camera == null)
			{
				camera = SwgEntities.Ship.ChaseCam.create(world);
				assert camera != null;

				camera.setParent(this);
				ClientUtil.spawnEntity(world, camera);
			}
		}

		viewPrevRotation = new Quaternion(viewRotation);
		viewRotation = new Quaternion(getRotation());

		Entity pilot = getPrimaryPassenger();
		float throttle = getThrottle();

		if (pilot instanceof PlayerEntity)
		{
			if (getControls().contains(ShipControls.THROTTLE_UP))
				throttle += 0.3f;
			if (getControls().contains(ShipControls.THROTTLE_DOWN))
				throttle -= 0.3f;

			throttle = MathHelper.clamp(throttle, 0, 3);

			setThrottle(throttle);
		}

		Vec3d forward = QuatUtil.rotate(MathUtil.NEGZ, getRotation());
		move(MovementType.SELF, forward.multiply(throttle));

		EntityUtil.updateEulerRotation(this, getRotation());
	}

	public boolean interact(PlayerEntity player, Hand hand)
	{
		if (player.shouldCancelInteraction())
			return false;
		else
			return !this.world.isClient && player.startRiding(this);
	}

	protected boolean canAddPassenger(Entity passenger)
	{
		return this.getPassengerList().size() < 2;
	}

	public void updatePassengerPosition(Entity passenger)
	{
		if (this.hasPassenger(passenger))
		{
			Vec3d vec3d = new Vec3d(0, 0, 3 * this.getPassengerList().indexOf(passenger));
			vec3d = QuatUtil.rotate(vec3d, getRotation());

			passenger.updatePosition(this.getX() + vec3d.x, this.getY() + vec3d.y, this.getZ() + vec3d.z);
			this.copyEntityData(passenger);
		}
	}

	protected void copyEntityData(Entity entity)
	{
		entity.yaw = this.yaw;
		entity.pitch = this.pitch;
	}

	@Nullable
	public Entity getPrimaryPassenger()
	{
		List<Entity> list = this.getPassengerList();
		return list.isEmpty() ? null : list.get(0);
	}

	@Override
	public Packet<?> createSpawnPacket()
	{
		return new EntitySpawnS2CPacket(this);
	}

	//	public Rotation getRotation(float t)
	//	{
	//		Rotation start = prevRotation;
	//		Rotation end = getRotation();
	//
	//		return MathUtil.lerp(start, end, t);
	//	}

	public EnumSet<ShipControls> getControls()
	{
		return ShipControls.unpack(getDataTracker().get(CONTROLS));
	}

	public void setControls(EnumSet<ShipControls> controls)
	{
		getDataTracker().set(CONTROLS, ShipControls.pack(controls));
	}

	public float getThrottle()
	{
		return getDataTracker().get(THROTTLE);
	}

	public void setThrottle(float t)
	{
		getDataTracker().set(THROTTLE, t);
	}

	public Quaternion getRotation()
	{
		return getDataTracker().get(ROTATION);
	}

	@Environment(EnvType.CLIENT)
	public Quaternion getViewRotation(float t)
	{
		Quaternion start = viewPrevRotation;
		Quaternion end = viewRotation;
		return QuatUtil.slerp(start, end, t);
	}

	public void setRotation(Quaternion q)
	{
		QuatUtil.normalize(q);
		getDataTracker().set(ROTATION, q);
	}

	public static ShipEntity create(World world)
	{
		ShipEntity ship = new ShipEntity(SwgEntities.Ship.T65bXwing, world);
		//		ship.setSettings(settings);
		return ship;
	}

	public void acceptControlInput(EnumSet<ShipControls> controls)
	{
		if (ShipControls.pack(controls) == getDataTracker().get(CONTROLS))
			return;

		setControls(controls);

		if (this.world.isClient)
		{
			PacketByteBuf passedData = new PacketByteBuf(Unpooled.buffer());
			passedData.writeShort(ShipControls.pack(controls));
			ClientSidePacketRegistry.INSTANCE.sendToServer(SwgPackets.C2S.PacketShipControls, passedData);
		}
	}

	public void acceptMouseInput(double mouseDx, double mouseDy)
	{
		Quaternion rotation = new Quaternion(getRotation());

		boolean pitchRoll = false;

		if (pitchRoll)
			rotation.hamiltonProduct(new Quaternion(new Vector3f(0, 0, 1), -(float)mouseDx * 0.15f, true));
		else
		{
			Vec3d v = QuatUtil.project(MathUtil.POSY, rotation);
			rotation.hamiltonProduct(new Quaternion(new Vector3f(v), (float)(Math.asin(v.y) * -mouseDx * 0.15f), true));

			// TODO: roll back toward zero when this mode is switched to and the ship has a nonzero roll
		}

		rotation.hamiltonProduct(new Quaternion(new Vector3f(1, 0, 0), -(float)mouseDy * 0.15f, true));

		setRotation(rotation);

		PacketByteBuf passedData = new PacketByteBuf(Unpooled.buffer());
		passedData.writeFloat(rotation.getA());
		passedData.writeFloat(rotation.getB());
		passedData.writeFloat(rotation.getC());
		passedData.writeFloat(rotation.getD());
		ClientSidePacketRegistry.INSTANCE.sendToServer(SwgPackets.C2S.PacketShipRotation, passedData);
	}
}
