package com.parzivail.util.math;

import net.minecraft.nbt.NbtCompound;
import net.minecraft.util.math.*;

public class QuatUtil
{
	private static final Vec3d UP = new Vec3d(0, 1, 0);
	private static final Vec3d FORWARD = new Vec3d(0, 0, 1);

	public static EulerAngle toEulerAngles(Quaternion q)
	{
		var forward = rotate(MathUtil.NEGZ, q);

		return MathUtil.lookToAngles(forward);
	}

	public static Quaternion lookAt(Vec3d sourcePoint, Vec3d destPoint)
	{
		var forwardVector = destPoint.subtract(sourcePoint).normalize();

		var dot = FORWARD.dotProduct(forwardVector);

		if (Math.abs(dot - (-1.0f)) < 0.000001f)
			return new Quaternion(new Vec3f((float)UP.x, (float)UP.y, (float)UP.z), MathHelper.PI, false);
		if (Math.abs(dot - (1.0f)) < 0.000001f)
			return new Quaternion(Quaternion.IDENTITY);

		var rotAngle = Math.acos(dot);
		var rotAxis = FORWARD.crossProduct(forwardVector);
		rotAxis = rotAxis.normalize();

		return new Quaternion(new Vec3f(rotAxis), (float)rotAngle, false);
	}

	public static Vec3d rotate(Vec3d self, Quaternion q)
	{
		var u = new Vec3d(q.getX(), q.getY(), q.getZ());
		var s = q.getW();
		return u.multiply(2.0f * u.dotProduct(self))
		        .add(self.multiply(s * s - u.dotProduct(u)))
		        .add(u.crossProduct(self).multiply(2.0f * s));
	}

	public static void putQuaternion(NbtCompound tag, Quaternion q)
	{
		tag.putFloat("a", q.getW());
		tag.putFloat("b", q.getX());
		tag.putFloat("c", q.getY());
		tag.putFloat("d", q.getZ());
	}

	public static Quaternion getQuaternion(NbtCompound tag)
	{
		return new Quaternion(tag.getFloat("b"), tag.getFloat("c"), tag.getFloat("d"), tag.getFloat("a"));
	}

	public static void rotateTowards(Quaternion self, Vec3d orientation, float speed)
	{
		self.normalize();
		var vec2 = rotate(orientation, self);
		var cross = orientation.crossProduct(vec2).multiply(-1.0);
		var axis = cross.normalize();
		var f1 = (float)cross.length();
		var other = new Quaternion(new Vec3f(axis), speed * f1, false);
		other.hamiltonProduct(self);
		self.set(other.getX(), other.getY(), other.getZ(), other.getW());
	}

	public static Quaternion getRotationTowards(Vec3d from, Vec3d to)
	{
		var cross = from.crossProduct(to);
		var w = (float)(Math.sqrt(from.lengthSquared() * to.lengthSquared()) + from.dotProduct(to));
		var q = new Quaternion(w, (float)cross.x, (float)cross.y, (float)cross.z);
		q.normalize();
		return q;
	}

	/**
	 * Finds a global vector in local terms
	 *
	 * @param v
	 * @param q
	 *
	 * @return
	 */
	public static Vec3d project(Vec3d v, Quaternion q)
	{
		var c = new Quaternion(q);
		c.conjugate();
		return rotate(v, c);
	}

	public static float dot(Quaternion q1, Quaternion q2)
	{
		return q1.getW() * q2.getW() + q1.getX() * q2.getX() + q1.getY() * q2.getY() + q1.getZ() * q2.getZ();
	}

	public static Quaternion slerp(Quaternion start, Quaternion end, float t)
	{
		// Only unit quaternions are valid rotations.
		// Normalize to avoid undefined behavior.
		start.normalize();
		end.normalize();

		// Compute the cosine of the angle between the two vectors.
		double dot = dot(start, end);

		// If the dot product is negative, slerp won't take
		// the shorter path. Note that end and -end are equivalent when
		// the negation is applied to all four components. Fix by
		// reversing one quaternion.
		if (dot < 0.0f)
		{
			end.scale(-1);
			dot = -dot;
		}

		if (dot > 0.9995)
		{
			// If the inputs are too close for comfort, linearly interpolate
			// and normalize the result.

			var f = 1 - t;

			var a = f * start.getW() + t * end.getW();
			var b = f * start.getX() + t * end.getX();
			var c = f * start.getY() + t * end.getY();
			var d = f * start.getZ() + t * end.getZ();

			var result = new Quaternion(b, c, d, a);
			result.normalize();
			return result;
		}

		// Since dot is in range [0, DOT_THRESHOLD], acos is safe
		var theta_0 = Math.acos(dot);        // theta_0 = angle between input vectors
		var theta = theta_0 * t;          // theta = angle between start and result
		var sin_theta = Math.sin(theta);     // compute this value only once
		var sin_theta_0 = Math.sin(theta_0); // compute this value only once

		var f1 = Math.cos(theta) - dot * sin_theta / sin_theta_0;  // == sin(theta_0 - theta) / sin(theta_0)
		var f2 = sin_theta / sin_theta_0;

		var a = (float)(f1 * start.getW() + f2 * end.getW());
		var b = (float)(f1 * start.getX() + f2 * end.getX());
		var c = (float)(f1 * start.getY() + f2 * end.getY());
		var d = (float)(f1 * start.getZ() + f2 * end.getZ());

		var result = new Quaternion(b, c, d, a);
		result.normalize();
		return result;
	}

	public static Quaternion invert(Quaternion q)
	{
		var l = q.getW() * q.getW() + q.getX() * q.getX() + q.getY() * q.getY() + q.getZ() * q.getZ();
		return new Quaternion(q.getW() / l, -q.getX() / l, -q.getY() / l, -q.getZ() / l);
	}
}
