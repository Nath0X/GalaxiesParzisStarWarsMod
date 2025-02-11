package com.parzivail.util.client;

import com.parzivail.util.Lumberjack;
import com.parzivail.util.math.SpriteSheetPoint;
import net.minecraft.block.BlockState;
import net.minecraft.util.math.BlockPos;
import net.minecraft.util.math.Direction;
import net.minecraft.world.BlockRenderView;

import java.util.Optional;

public class ConnectedTextureHelper
{
	public record Sides(SpriteSheetPoint TopLeft, SpriteSheetPoint TopRight, SpriteSheetPoint BottomLeft,
	                    SpriteSheetPoint BottomRight)
	{
	}

	private static final int CONNECTED_UP = 0b00000001;
	private static final int CONNECTED_DOWN = 0b00000010;
	private static final int CONNECTED_LEFT = 0b00000100;
	private static final int CONNECTED_RIGHT = 0b00001000;

	private static final int CONNECTED_DIAG_UPLEFT = 0b00010000;
	private static final int CONNECTED_DIAG_UPRIGHT = 0b00100000;
	private static final int CONNECTED_DIAG_DOWNLEFT = 0b01000000;
	private static final int CONNECTED_DIAG_DOWNRIGHT = 0b10000000;

	private static Sides getPointFromConnections(int connections)
	{
		return new Sides(
				getCornerConnection(connections, CONNECTED_UP, CONNECTED_LEFT, CONNECTED_DIAG_UPLEFT, 0, 0),
				getCornerConnection(connections, CONNECTED_UP, CONNECTED_RIGHT, CONNECTED_DIAG_UPRIGHT, 1, 0),
				getCornerConnection(connections, CONNECTED_DOWN, CONNECTED_LEFT, CONNECTED_DIAG_DOWNLEFT, 0, 1),
				getCornerConnection(connections, CONNECTED_DOWN, CONNECTED_RIGHT, CONNECTED_DIAG_DOWNRIGHT, 1, 1)
		);
	}

	private static SpriteSheetPoint getCornerConnection(int connections, int vertEdge, int horizEdge, int diagBit, int x, int y)
	{
		var edgeMask = vertEdge | horizEdge;

		if ((connections & edgeMask) == 0)
			return new SpriteSheetPoint(x, y); // interior corner
		else if ((connections & edgeMask) == edgeMask)
		{
			if ((connections & diagBit) == 0)
				return new SpriteSheetPoint(x + 2, y + 2); // exterior corner
			else
				return new SpriteSheetPoint(x, y, 1); // no corner
		}
		else if ((connections & horizEdge) == horizEdge)
			return new SpriteSheetPoint(x + 2, y); // horizontal connection
		else if ((connections & vertEdge) == vertEdge)
			return new SpriteSheetPoint(x, y + 2); // vertical connection
		else
		{
			Lumberjack.debug("Impossible connection case?");
			return null;
		}
	}

	public static Sides getConnectedBlockTexture(BlockRenderView blockView, BlockState block, BlockPos pos, Direction facing, boolean horizontalConnect, boolean verticalConnect, boolean lateralConnect)
	{
		if (pos == null)
		{
			if (!horizontalConnect && (facing == Direction.UP || facing == Direction.DOWN))
				return null;
			if (!verticalConnect && !(facing == Direction.UP || facing == Direction.DOWN))
				return null;
			return getPointFromConnections(0);
		}

		Optional<Direction> up, down, left, right;

		switch (facing)
		{
			case DOWN -> {
				up = lateralConnect ? Optional.of(Direction.NORTH) : Optional.empty();
				down = lateralConnect ? Optional.of(Direction.SOUTH) : Optional.empty();
				left = lateralConnect ? Optional.of(Direction.EAST) : Optional.empty();
				right = lateralConnect ? Optional.of(Direction.WEST) : Optional.empty();
			}
			case UP -> {
				up = lateralConnect ? Optional.of(Direction.NORTH) : Optional.empty();
				down = lateralConnect ? Optional.of(Direction.SOUTH) : Optional.empty();
				left = lateralConnect ? Optional.of(Direction.WEST) : Optional.empty();
				right = lateralConnect ? Optional.of(Direction.EAST) : Optional.empty();
			}
			case NORTH -> {
				up = verticalConnect ? Optional.of(Direction.UP) : Optional.empty();
				down = verticalConnect ? Optional.of(Direction.DOWN) : Optional.empty();
				left = horizontalConnect ? Optional.of(Direction.EAST) : Optional.empty();
				right = horizontalConnect ? Optional.of(Direction.WEST) : Optional.empty();
			}
			case SOUTH -> {
				up = verticalConnect ? Optional.of(Direction.UP) : Optional.empty();
				down = verticalConnect ? Optional.of(Direction.DOWN) : Optional.empty();
				left = horizontalConnect ? Optional.of(Direction.WEST) : Optional.empty();
				right = horizontalConnect ? Optional.of(Direction.EAST) : Optional.empty();
			}
			case WEST -> {
				up = verticalConnect ? Optional.of(Direction.UP) : Optional.empty();
				down = verticalConnect ? Optional.of(Direction.DOWN) : Optional.empty();
				left = horizontalConnect ? Optional.of(Direction.NORTH) : Optional.empty();
				right = horizontalConnect ? Optional.of(Direction.SOUTH) : Optional.empty();
			}
			case EAST -> {
				up = verticalConnect ? Optional.of(Direction.UP) : Optional.empty();
				down = verticalConnect ? Optional.of(Direction.DOWN) : Optional.empty();
				left = horizontalConnect ? Optional.of(Direction.SOUTH) : Optional.empty();
				right = horizontalConnect ? Optional.of(Direction.NORTH) : Optional.empty();
			}
			default -> throw new IllegalStateException("Unexpected value: " + facing);
		}

		if (up.isEmpty() && left.isEmpty()) // neither a horizontal nor vertical connection
			return null;

		var connections = 0;

		if (up.isPresent() && shouldConnect(blockView, pos, pos.offset(up.get())))
			connections |= CONNECTED_UP;

		if (down.isPresent() && shouldConnect(blockView, pos, pos.offset(down.get())))
			connections |= CONNECTED_DOWN;

		if (left.isPresent() && shouldConnect(blockView, pos, pos.offset(left.get())))
			connections |= CONNECTED_LEFT;

		if (right.isPresent() && shouldConnect(blockView, pos, pos.offset(right.get())))
			connections |= CONNECTED_RIGHT;

		if (connections == 0) // Break early if no connections, don't need to check diagonal
			return getPointFromConnections(connections);

		if (up.isPresent() && left.isPresent() && shouldConnect(blockView, pos, pos.offset(up.get()).offset(left.get())))
			connections |= CONNECTED_DIAG_UPLEFT;

		if (up.isPresent() && right.isPresent() && shouldConnect(blockView, pos, pos.offset(up.get()).offset(right.get())))
			connections |= CONNECTED_DIAG_UPRIGHT;

		if (down.isPresent() && left.isPresent() && shouldConnect(blockView, pos, pos.offset(down.get()).offset(left.get())))
			connections |= CONNECTED_DIAG_DOWNLEFT;

		if (down.isPresent() && right.isPresent() && shouldConnect(blockView, pos, pos.offset(down.get()).offset(right.get())))
			connections |= CONNECTED_DIAG_DOWNRIGHT;

		return getPointFromConnections(connections);
	}

	private static boolean shouldConnect(BlockRenderView world, BlockPos a, BlockPos b)
	{
		if (world == null)
			return false;
		return shouldConnect(world.getBlockState(a), world.getBlockState(b));
	}

	private static boolean shouldConnect(BlockState a, BlockState b)
	{
		return a.isOf(b.getBlock());
	}
}
