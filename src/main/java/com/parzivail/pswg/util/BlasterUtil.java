package com.parzivail.pswg.util;

import com.parzivail.pswg.container.SwgEntities;
import com.parzivail.pswg.entity.BlasterBoltEntity;
import com.parzivail.pswg.entity.BlasterStunBoltEntity;
import com.parzivail.util.entity.EntityUtil;
import com.parzivail.util.entity.PProjectileEntityDamageSource;
import net.minecraft.entity.Entity;
import net.minecraft.entity.damage.DamageSource;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.util.hit.HitResult;
import net.minecraft.util.math.Vec3d;
import net.minecraft.world.RaycastContext;
import net.minecraft.world.World;

import java.util.function.Consumer;

public class BlasterUtil
{
	public static DamageSource getDamageSource(Entity projectile, Entity attacker)
	{
		return new PProjectileEntityDamageSource("pswg.blaster", projectile, attacker).setIgnoresInvulnerableFrames().setProjectile();
	}

	public static void fireBolt(World world, PlayerEntity player, Vec3d fromDir, float range, float damage, Consumer<BlasterBoltEntity> entityInitializer)
	{
		final var bolt = new BlasterBoltEntity(SwgEntities.Misc.BlasterBolt, player, world);
		entityInitializer.accept(bolt);
		bolt.setRange(range);

		world.spawnEntity(bolt);

		var start = new Vec3d(bolt.getX(), bolt.getY() + bolt.getHeight() / 2f, bolt.getZ());

		// TODO: this would be a great slugthrower effect
//		for (var d = 0; d < range; d++)
//		{
//			var vec = start.add(fromDir.multiply(d));
//			world.addParticle(ParticleTypes.SMOKE, vec.x, vec.y, vec.z, 0, 0, 0);
//		}

		var hit = EntityUtil.raycastEntities(start, fromDir, range, player, new Entity[] { player });
		var blockHit = EntityUtil.raycastBlocks(start, fromDir, range, player, RaycastContext.FluidHandling.ANY);

		var entityDistance = hit == null ? Double.MAX_VALUE : hit.hit().squaredDistanceTo(player.getPos());
		var blockDistance = blockHit.getType() == HitResult.Type.MISS ? Double.MAX_VALUE : blockHit.squaredDistanceTo(player);

		if (hit != null && entityDistance < blockDistance)
		{
			hit.entity().damage(getDamageSource(bolt, player), damage);
		}
		else if (blockHit.getType() == HitResult.Type.BLOCK)
		{
			// TODO: smoke puff, blaster burn mark, etc server-side stuff
		}
	}

	public static void fireStun(World world, PlayerEntity player, Vec3d fromDir, float range, float damage, Consumer<BlasterBoltEntity> entityInitializer)
	{
		final var bolt = new BlasterStunBoltEntity(SwgEntities.Misc.BlasterStunBolt, player, world);
		entityInitializer.accept(bolt);
		bolt.setRange(range);

		world.spawnEntity(bolt);

		var start = new Vec3d(bolt.getX(), bolt.getY() + bolt.getHeight() / 2f, bolt.getZ());

		var hit = EntityUtil.raycastEntities(start, fromDir, range, player, new Entity[] { player });
		var blockHit = EntityUtil.raycastBlocks(start, fromDir, range, player, RaycastContext.FluidHandling.ANY);

		// TODO: cone testing
		var entityDistance = hit == null ? Double.MAX_VALUE : hit.hit().squaredDistanceTo(player.getPos());
		var blockDistance = blockHit.getType() == HitResult.Type.MISS ? Double.MAX_VALUE : blockHit.squaredDistanceTo(player);

		if (hit != null && entityDistance < blockDistance)
		{
			hit.entity().damage(getDamageSource(bolt, player), damage);
		}
	}
}
