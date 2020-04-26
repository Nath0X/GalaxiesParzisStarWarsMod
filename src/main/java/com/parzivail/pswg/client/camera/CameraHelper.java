package com.parzivail.pswg.client.camera;

import com.parzivail.pswg.entity.ShipEntity;
import com.parzivail.pswg.util.Rotation;
import com.parzivail.pswg.util.VertUtil;
import net.minecraft.client.MinecraftClient;
import net.minecraft.client.render.Camera;
import net.minecraft.client.util.math.MatrixStack;
import net.minecraft.client.util.math.Vector3f;
import net.minecraft.entity.Entity;
import net.minecraft.util.math.EulerAngle;

public class CameraHelper
{
	public static void applyCameraTransformations(float tickDelta, long limitTime, MatrixStack matrix, Camera camera)
	{
		MinecraftClient mc = MinecraftClient.getInstance();
		Entity cameraEntity = mc.cameraEntity;

		assert cameraEntity != null;

		if (cameraEntity instanceof ShipEntity)
		{
			ShipEntity ship = (ShipEntity)cameraEntity;

			Rotation r = ship.getRotation(tickDelta);
			EulerAngle angle = r.toEulerAngles();

			//			matrix.multiply(Vector3f.POSITIVE_Z.getDegreesQuaternion(-angle.getRoll()));

			MatrixStack.Entry e = matrix.peek();
			e.getModel().multiply(VertUtil.toClientMat(r.getMatrix()));
		}
		else
		{
			matrix.multiply(Vector3f.POSITIVE_X.getDegreesQuaternion(camera.getPitch()));
			matrix.multiply(Vector3f.POSITIVE_Y.getDegreesQuaternion(camera.getYaw() + 180.0F));
		}
	}
}
