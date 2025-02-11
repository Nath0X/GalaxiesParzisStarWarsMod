package com.parzivail.pswg.client.input;

import com.parzivail.pswg.Client;
import com.parzivail.pswg.client.screen.SpeciesSelectScreen;
import com.parzivail.pswg.container.SwgPackets;
import com.parzivail.pswg.entity.ship.ShipEntity;
import com.parzivail.util.item.ItemAction;
import io.netty.buffer.Unpooled;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.minecraft.client.MinecraftClient;
import net.minecraft.network.PacketByteBuf;

import java.util.EnumSet;

public class KeyHandler
{
	public static void tick(MinecraftClient mc)
	{
		if (mc.player == null)
			return;

		if (Client.KEY_SPECIES_SELECT.wasPressed())
			mc.setScreen(new SpeciesSelectScreen(mc.currentScreen));

		if (Client.KEY_PRIMARY_ITEM_ACTION.wasPressed())
		{
			sendAction(ItemAction.PRIMARY);
		}

		if (Client.KEY_SECONDARY_ITEM_ACTION.wasPressed())
		{
			sendAction(ItemAction.SECONDARY);
		}

		var ship = ShipEntity.getShip(mc.player);

		if (ship != null)
		{
			var controls = EnumSet.noneOf(ShipControls.class);

			if (mc.options.keyForward.isPressed())
				controls.add(ShipControls.THROTTLE_UP);

			if (mc.options.keyBack.isPressed())
				controls.add(ShipControls.THROTTLE_DOWN);

			if (mc.options.keyRight.isPressed())
				controls.add(ShipControls.SPECIAL1);

			if (mc.options.keyLeft.isPressed())
				controls.add(ShipControls.SPECIAL2);

			ship.acceptControlInput(controls);
		}
	}

	private static void sendAction(ItemAction action)
	{
		var passedData = new PacketByteBuf(Unpooled.buffer());
		passedData.writeInt(action.ordinal());
		ClientPlayNetworking.send(SwgPackets.C2S.PacketPlayerItemAction, passedData);
	}
}
