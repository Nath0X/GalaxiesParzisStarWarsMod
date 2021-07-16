package com.parzivail.pswg.entity.ship;

import com.parzivail.pswg.util.QuatUtil;
import com.parzivail.util.entity.EntityUtil;
import com.parzivail.util.math.MathUtil;
import net.minecraft.entity.EntityType;
import net.minecraft.entity.MovementType;
import net.minecraft.util.hit.HitResult;
import net.minecraft.util.math.Vec3d;
import net.minecraft.world.World;

public class SpeederEntity extends ShipEntity
{
	public SpeederEntity(EntityType<?> type, World world)
	{
		super(type, world);
	}

	protected double getRepulsorSetpoint()
	{
		return -1;
	}

	@Override
	public boolean usePlayerPerspective()
	{
		return true;
	}

	@Override
	public void tick()
	{
		super.tick();

		var d = getMaxHeightInPatch(getPos(), 2 * getThrottle(), 5);
		var setpoint = getRepulsorSetpoint();
		if (Math.abs(d - setpoint) < 0.05f)
			d = setpoint;

		this.move(MovementType.SELF, new Vec3d(0, (d - setpoint) / 5f, 0));
	}

	protected double getMaxHeightInPatch(Vec3d start, double spacing, double range)
	{
		var d = -Double.MAX_VALUE;

		for (var x = -1; x <= 1; x++)
		{
			for (var z = -1; z <= 1; z++)
			{
				var blockHit = EntityUtil.raycastBlocks(start.add(new Vec3d(x * spacing, range, z * spacing)), MathUtil.NEGY, range * 2, this);
				var blockDistance = blockHit.getType() == HitResult.Type.MISS ? -range : (blockHit.getPos().y - start.y);

				if (blockDistance > d)
					d = blockDistance;
			}
		}

		return d;
	}

	@Override
	protected Vec3d getThrottleVelocity(float throttle)
	{
		var d = QuatUtil.rotate(MathUtil.NEGZ, getRotation());
		d = new Vec3d(d.x, 0.02f, d.z);
		return d.multiply(throttle / 2);
	}

	@Override
	public float getCameraLerp()
	{
		return 0.75f;
	}
}
