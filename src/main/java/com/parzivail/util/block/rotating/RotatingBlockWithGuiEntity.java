package com.parzivail.util.block.rotating;

import net.minecraft.block.BlockState;
import net.minecraft.block.entity.BlockEntity;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.util.ActionResult;
import net.minecraft.util.Hand;
import net.minecraft.util.hit.BlockHitResult;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.World;

import java.util.function.BiFunction;

public class RotatingBlockWithGuiEntity extends RotatingBlockWithEntity
{
	private final BiFunction<BlockPos, BlockState, BlockEntity> blockEntityBiFunction;

	public RotatingBlockWithGuiEntity(Settings settings, BiFunction<BlockPos, BlockState, BlockEntity> blockEntityBiFunction)
	{
		super(settings);
		this.blockEntityBiFunction = blockEntityBiFunction;
	}

	@Override
	public BlockEntity createBlockEntity(BlockPos pos, BlockState state)
	{
		return blockEntityBiFunction.apply(pos, state);
	}

	public ActionResult onUse(BlockState state, World world, BlockPos pos, PlayerEntity player, Hand hand, BlockHitResult hit)
	{
		if (world.isClient)
			return ActionResult.SUCCESS;
		else
		{
			player.openHandledScreen(state.createScreenHandlerFactory(world, pos));
			return ActionResult.CONSUME;
		}
	}
}
