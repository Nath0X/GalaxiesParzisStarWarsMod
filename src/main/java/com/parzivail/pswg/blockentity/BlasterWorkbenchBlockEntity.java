package com.parzivail.pswg.blockentity;

import com.parzivail.pswg.Resources;
import com.parzivail.pswg.container.SwgBlocks;
import com.parzivail.pswg.screen.BlasterWorkbenchScreenHandler;
import com.parzivail.util.block.BlockEntityClientSerializable;
import net.minecraft.block.BlockState;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.entity.player.PlayerInventory;
import net.minecraft.item.ItemStack;
import net.minecraft.nbt.NbtCompound;
import net.minecraft.screen.NamedScreenHandlerFactory;
import net.minecraft.screen.ScreenHandler;
import net.minecraft.text.Text;
import net.minecraft.text.TranslatableText;
import net.minecraft.util.math.BlockPos;

public class BlasterWorkbenchBlockEntity extends InventoryBlockEntity implements NamedScreenHandlerFactory, BlockEntityClientSerializable
{
	public static final int SLOT_BLASTER = 0;
	public static final int SLOT_1 = 1;
	public static final int SLOT_ROD = 2;
	public static final int SLOT_PLATE = 3;
	public static final int SLOT_COIL = 4;
	public static final int SLOT_BOX = 5;

	public BlasterWorkbenchBlockEntity(BlockPos pos, BlockState state)
	{
		super(SwgBlocks.Workbench.BlasterBlockEntityType, pos, state, 6);
	}

	@Override
	public Text getDisplayName()
	{
		return new TranslatableText(Resources.container("blaster_workbench"));
	}

	@Override
	public ScreenHandler createMenu(int syncId, PlayerInventory inv, PlayerEntity player)
	{
		return new BlasterWorkbenchScreenHandler(syncId, inv, this);
	}

	@Override
	public NbtCompound toInitialChunkDataNbt()
	{
		return toClientTag(super.toInitialChunkDataNbt());
	}

	@Override
	public void markDirty()
	{
		super.markDirty();
		sync();
	}

	@Override
	public void readNbt(NbtCompound tag)
	{
		if (this.world != null && this.world.isClient)
			fromClientTag(tag);
		super.readNbt(tag);
	}

	@Override
	public void fromClientTag(NbtCompound compoundTag)
	{
		inventory.set(SLOT_BLASTER, ItemStack.fromNbt(compoundTag.getCompound("blaster")));
	}

	@Override
	public NbtCompound toClientTag(NbtCompound compoundTag)
	{
		compoundTag.put("blaster", inventory.get(SLOT_BLASTER).writeNbt(new NbtCompound()));
		return compoundTag;
	}
}
