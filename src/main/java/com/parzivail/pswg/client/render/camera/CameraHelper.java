package com.parzivail.pswg.client.render.camera;

import com.parzivail.pswg.client.weapon.RecoilManager;
import com.parzivail.pswg.entity.ship.ShipEntity;
import net.minecraft.client.MinecraftClient;
import net.minecraft.client.network.AbstractClientPlayerEntity;
import net.minecraft.client.option.Perspective;
import net.minecraft.client.render.Camera;
import net.minecraft.client.util.math.MatrixStack;
import net.minecraft.util.math.Quaternion;
import net.minecraft.util.math.Vec3f;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

public class CameraHelper
{
	public static final MutableCameraEntity MUTABLE_CAMERA_ENTITY = new MutableCameraEntity();

	public static boolean forcePlayerRender = false;

	public static void applyCameraTransformations(float tickDelta, long limitTime, MatrixStack matrix, Camera camera)
	{
		var minecraft = MinecraftClient.getInstance();
		assert minecraft.player != null;

		var ship = ShipEntity.getShip(minecraft.player);

		if (ship == null)
			return;

		if (ship.usePlayerPerspective())
			return;

		// Undo what is expected to be the player's current rotation transformation
		matrix.multiply(Vec3f.POSITIVE_Y.getDegreesQuaternion(-(camera.getYaw() + 180.0F)));
		matrix.multiply(Vec3f.POSITIVE_X.getDegreesQuaternion(-camera.getPitch()));

		var r = new Quaternion(ship.getViewRotation(tickDelta));

		if (minecraft.options.getPerspective() == Perspective.THIRD_PERSON_FRONT)
			r.hamiltonProduct(new Quaternion(Vec3f.POSITIVE_Y, 180, true));

		r.conjugate();
		matrix.multiply(r);

		if (minecraft.options.getPerspective().isFirstPerson())
			matrix.translate(0, -0.1, 0);
	}

	public static void renderHand(MatrixStack matrices, Camera camera, float tickDelta, CallbackInfo ci)
	{
		var minecraft = MinecraftClient.getInstance();

		if (minecraft.getCameraEntity() instanceof MutableCameraEntity || minecraft.getCameraEntity() instanceof ShipEntity)
			ci.cancel();
	}

	public static void renderWorldHead(float tickDelta, long limitTime, MatrixStack matrix, Camera camera)
	{
		var minecraft = MinecraftClient.getInstance();
		var player = minecraft.player;

		assert player != null;

		var ship = ShipEntity.getShip(player);

		if (ship != null)
		{
			if (ship.usePlayerPerspective())
			{
				minecraft.setCameraEntity(player);
				//				QuatUtil.updateEulerRotation(minecraft.cameraEntity, ship.getViewRotation(minecraft.getTickDelta()));
			}
			else if (minecraft.options.getPerspective() != Perspective.FIRST_PERSON)
				minecraft.setCameraEntity(CameraHelper.MUTABLE_CAMERA_ENTITY.with(ship, ship.getCamera()));
			else
				minecraft.setCameraEntity(ship);

			return;
		}

		if (minecraft.getCameraEntity() instanceof MutableCameraEntity || minecraft.getCameraEntity() instanceof ShipEntity)
			minecraft.setCameraEntity(player);
	}

	public static void playerRenderHead(AbstractClientPlayerEntity abstractClientPlayerEntity, CallbackInfo ci)
	{
		if (forcePlayerRender)
			return;

		var ship = ShipEntity.getShip(abstractClientPlayerEntity);
		if (ship != null && !ship.usePlayerPerspective())
			ci.cancel();
	}

	public static void applyCameraShake(float tickDelta, long limitTime, MatrixStack matrix, Camera camera, double fov)
	{
		var minecraft = MinecraftClient.getInstance();

		RecoilManager.applyCameraShake(minecraft, matrix, camera, tickDelta, fov);
	}
}
