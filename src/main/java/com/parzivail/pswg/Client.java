package com.parzivail.pswg;

import com.parzivail.pswg.client.input.KeyHandler;
import com.parzivail.pswg.client.loader.ModelLoader;
import com.parzivail.pswg.client.loader.NemManager;
import com.parzivail.pswg.client.render.BlasterBoltRenderer;
import com.parzivail.pswg.client.render.RenderLayerHelper;
import com.parzivail.pswg.client.render.ThrownLightsaberRenderer;
import com.parzivail.pswg.client.render.amphibian.WorrtEntityRenderer;
import com.parzivail.pswg.client.render.fish.FaaEntityRenderer;
import com.parzivail.pswg.client.render.fish.LaaEntityRenderer;
import com.parzivail.pswg.client.render.item.BlasterItemRenderer;
import com.parzivail.pswg.client.render.item.LightsaberItemRenderer;
import com.parzivail.pswg.client.render.item.hud.BlasterHudRenderer;
import com.parzivail.pswg.client.render.ship.T65BXwingRenderer;
import com.parzivail.pswg.client.screen.*;
import com.parzivail.pswg.client.texture.remote.RemoteTextureProvider;
import com.parzivail.pswg.client.texture.stacked.StackedTextureProvider;
import com.parzivail.pswg.container.*;
import com.parzivail.pswg.data.SwgBlasterManager;
import com.parzivail.pswg.entity.ship.ShipEntity;
import com.parzivail.util.Lumberjack;
import com.parzivail.util.client.EmptyBlockEntityRenderer;
import com.parzivail.util.client.model.DynamicBakedModel;
import com.parzivail.util.client.model.ModelRegistry;
import com.parzivail.util.item.ICustomHudRenderer;
import com.parzivail.util.item.ICustomItemRenderer;
import com.parzivail.util.item.ICustomPoseItem;
import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.event.lifecycle.v1.ClientTickEvents;
import net.fabricmc.fabric.api.client.keybinding.v1.KeyBindingHelper;
import net.fabricmc.fabric.api.client.model.ModelLoadingRegistry;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.fabricmc.fabric.api.client.rendereregistry.v1.BlockEntityRendererRegistry;
import net.fabricmc.fabric.api.client.rendereregistry.v1.EntityRendererRegistry;
import net.fabricmc.fabric.api.client.rendering.v1.ColorProviderRegistry;
import net.fabricmc.fabric.api.client.screenhandler.v1.ScreenRegistry;
import net.minecraft.client.MinecraftClient;
import net.minecraft.client.option.KeyBinding;
import net.minecraft.client.render.RenderLayer;
import net.minecraft.client.util.InputUtil;
import net.minecraft.util.Identifier;
import org.lwjgl.glfw.GLFW;

public class Client implements ClientModInitializer
{
	public static final KeyBinding KEY_LIGHTSABER_TOGGLE = new KeyBinding(Resources.keyBinding("lightsaber_toggle"), InputUtil.Type.KEYSYM, GLFW.GLFW_KEY_X, "key.category.pswg");
	public static final KeyBinding KEY_SHIP_INPUT_MODE_OVERRIDE = new KeyBinding(Resources.keyBinding("ship_input_mode_override"), InputUtil.Type.KEYSYM, GLFW.GLFW_KEY_V, "key.category.pswg");

	public static final KeyBinding KEY_SPECIES_SELECT = new KeyBinding(Resources.keyBinding("species_select"), InputUtil.Type.KEYSYM, GLFW.GLFW_KEY_K, "key.category.pswg");

	public static RemoteTextureProvider remoteTextureProvider;
	public static StackedTextureProvider stackedTextureProvider;
	public static NemManager nemManager;

	private static SwgBlasterManager blasterLoader;

	public static boolean isShipClientControlled(ShipEntity shipEntity)
	{
		MinecraftClient minecraft = MinecraftClient.getInstance();
		if (minecraft == null || minecraft.player == null)
			return false;

		return ShipEntity.getShip(minecraft.player) == shipEntity;
	}

	public static void resetLoaders()
	{
		blasterLoader = new SwgBlasterManager();
	}

	public static SwgBlasterManager getBlasterLoader()
	{
		return blasterLoader;
	}

	@Override
	public void onInitializeClient()
	{
		Lumberjack.debug("onInitializeClient");

		KeyBindingHelper.registerKeyBinding(KEY_LIGHTSABER_TOGGLE);
		KeyBindingHelper.registerKeyBinding(KEY_SHIP_INPUT_MODE_OVERRIDE);
		KeyBindingHelper.registerKeyBinding(KEY_SPECIES_SELECT);

		ClientTickEvents.START_CLIENT_TICK.register(KeyHandler::handle);

		ColorProviderRegistry.BLOCK.register((state, world, pos, tintIndex) -> 0x8AB534, SwgBlocks.Leaves.Sequoia);
		ColorProviderRegistry.ITEM.register((stack, tintIndex) -> 0x8AB534, SwgBlocks.Leaves.Sequoia);

		// TODO
//		BlockEntityRendererRegistry.INSTANCE.register(SwgBlocks.Door.TatooineHomeBlockEntityType, TatooineHomeDoorRenderer::new);
		BlockEntityRendererRegistry.INSTANCE.register(SwgBlocks.Door.TatooineHomeBlockEntityType, EmptyBlockEntityRenderer::new);

		ModelRegistry.register(SwgBlocks.Barrel.Desh, true, ModelLoader.loadPM3D(DynamicBakedModel.Discriminator.RENDER_SEED, Resources.identifier("models/block/barrel/mos_eisley.pm3d"), Resources.identifier("model/barrel/mos_eisley"), new Identifier("block/stone")));

		ScreenRegistry.register(SwgScreenTypes.Crate.Octagon, CrateOctagonScreen::new);
		ScreenRegistry.register(SwgScreenTypes.Crate.MosEisley, CrateGenericSmallScreen::new);
		ScreenRegistry.register(SwgScreenTypes.Crate.ImperialCube, CrateGenericSmallScreen::new);
		ScreenRegistry.register(SwgScreenTypes.Crate.Segmented, CrateGenericSmallScreen::new);
		ScreenRegistry.register(SwgScreenTypes.MoistureVaporator.GX8, MoistureVaporatorScreen::new);
		ScreenRegistry.register(SwgScreenTypes.Workbench.Blaster, BlasterWorkbenchScreen::new);
		ScreenRegistry.register(SwgScreenTypes.Workbench.Lightsaber, LightsaberForgeScreen::new);

		ModelRegistry.register(SwgBlocks.Tank.Fusion, true, ModelLoader.loadPM3D(Resources.identifier("models/block/tank/fusion.pm3d"), Resources.identifier("model/tank/fusion"), new Identifier("block/stone")));

		ModelRegistry.register(SwgBlocks.Crate.OrangeKyber, true, ModelLoader.loadPM3D(Resources.identifier("models/block/crate/octagon.pm3d"), Resources.identifier("model/crate/octagon_orange"), new Identifier("block/stone")));
		ModelRegistry.register(SwgBlocks.Crate.GrayKyber, true, ModelLoader.loadPM3D(Resources.identifier("models/block/crate/octagon.pm3d"), Resources.identifier("model/crate/octagon_gray"), new Identifier("block/stone")));
		ModelRegistry.register(SwgBlocks.Crate.BlackKyber, true, ModelLoader.loadPM3D(Resources.identifier("models/block/crate/octagon.pm3d"), Resources.identifier("model/crate/octagon_black"), new Identifier("block/stone")));
		ModelRegistry.register(SwgBlocks.Crate.Toolbox, true, ModelLoader.loadPM3D(Resources.identifier("models/block/crate/mos_eisley.pm3d"), Resources.identifier("model/crate/mos_eisley"), new Identifier("block/stone")));
		ModelRegistry.register(SwgBlocks.Crate.Imperial, true, ModelLoader.loadPM3D(Resources.identifier("models/block/crate/imperial_cube.pm3d"), Resources.identifier("model/crate/imperial_cube"), new Identifier("block/stone")));
		ModelRegistry.register(SwgBlocks.Crate.Segmented, true, ModelLoader.loadPM3D(Resources.identifier("models/block/crate/segmented.pm3d"), Resources.identifier("model/crate/segmented"), new Identifier("block/stone")));

		ModelRegistry.register(SwgBlocks.Light.RedHangar, true, ModelLoader.loadPM3D(Resources.identifier("models/block/light/hangar_light.pm3d"), Resources.identifier("model/light/red_hangar_light"), new Identifier("block/stone")));
		ModelRegistry.register(SwgBlocks.Light.BlueHangar, true, ModelLoader.loadPM3D(Resources.identifier("models/block/light/hangar_light.pm3d"), Resources.identifier("model/light/blue_hangar_light"), new Identifier("block/stone")));
		ModelRegistry.register(SwgBlocks.Light.WallCluster, true, ModelLoader.loadPM3D(Resources.identifier("models/block/light/wall_cluster.pm3d"), Resources.identifier("model/light/wall_cluster"), new Identifier("block/stone")));

		ModelRegistry.register(SwgBlocks.Machine.Spoked, true, ModelLoader.loadPM3D(Resources.identifier("models/block/machine_spoked.pm3d"), Resources.identifier("model/machine_spoked"), new Identifier("block/stone")));

		ModelRegistry.register(SwgBlocks.MoistureVaporator.Gx8, false, ModelLoader.loadPM3D(Resources.identifier("models/block/moisture_vaporator/gx8.pm3d"), Resources.identifier("model/moisture_vaporator_gx8"), new Identifier("block/stone")));

		ModelRegistry.register(SwgBlocks.Pipe.Large, false, ModelLoader.loadPM3D(Resources.identifier("models/block/pipe_thick.pm3d"), Resources.identifier("model/pipe_thick"), new Identifier("block/stone")));

		ModelRegistry.registerConnected(SwgBlocks.Panel.ImperialLightTall1, false, true, false, Resources.identifier("block/panel_imperial_base_connected"));
		ModelRegistry.registerConnected(SwgBlocks.Panel.ImperialLightTall2, false, true, false, Resources.identifier("block/panel_imperial_base_connected"));

		ModelRegistry.registerConnected(SwgBlocks.MaterialBlock.Plasteel);

		ModelRegistry.registerConnected(SwgBlocks.Glass.Imperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.WhiteStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.OrangeStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.MagentaStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.LightBlueStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.YellowStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.LimeStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.PinkStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.GrayStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.LightGrayStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.CyanStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.PurpleStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.BlueStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.BrownStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.GreenStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.RedStainedImperial);
		ModelRegistry.registerConnected(SwgBlocks.Glass.BlackStainedImperial);

		RenderLayerHelper.addBlock(SwgBlocks.Glass.Imperial, RenderLayer.getCutout());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.WhiteStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.OrangeStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.MagentaStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.LightBlueStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.YellowStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.LimeStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.PinkStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.GrayStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.LightGrayStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.CyanStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.PurpleStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.BlueStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.BrownStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.GreenStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.RedStainedImperial, RenderLayer.getTranslucent());
		RenderLayerHelper.addBlock(SwgBlocks.Glass.BlackStainedImperial, RenderLayer.getTranslucent());

		RenderLayerHelper.addBlock(SwgBlocks.Leaves.Sequoia, RenderLayer.getCutoutMipped());

		RenderLayerHelper.addBlock(SwgBlocks.Plant.FunnelFlower, RenderLayer.getCutout());
		RenderLayerHelper.addBlock(SwgBlocks.Plant.BlossomingFunnelFlower, RenderLayer.getCutout());
		RenderLayerHelper.addBlock(SwgBlocks.Plant.PoontenGrass, RenderLayer.getCutout());
		RenderLayerHelper.addBlock(SwgBlocks.Plant.DriedPoontenGrass, RenderLayer.getCutout());
		RenderLayerHelper.addBlock(SwgBlocks.Plant.Tuber, RenderLayer.getCutout());
		RenderLayerHelper.addBlock(SwgBlocks.Plant.Chasuka, RenderLayer.getCutout());

		ModelLoadingRegistry.INSTANCE.registerVariantProvider(r -> ModelRegistry.INSTANCE);

		EntityRendererRegistry.INSTANCE.register(SwgEntities.Ship.T65bXwing, T65BXwingRenderer::new);
		EntityRendererRegistry.INSTANCE.register(SwgEntities.Misc.BlasterBolt, BlasterBoltRenderer::new);
		EntityRendererRegistry.INSTANCE.register(SwgEntities.Misc.ThrownLightsaber, ThrownLightsaberRenderer::new);
		EntityRendererRegistry.INSTANCE.register(SwgEntities.Fish.Faa, FaaEntityRenderer::new);
		EntityRendererRegistry.INSTANCE.register(SwgEntities.Fish.Laa, LaaEntityRenderer::new);
		EntityRendererRegistry.INSTANCE.register(SwgEntities.Amphibian.Worrt, WorrtEntityRenderer::new);

		ICustomItemRenderer.register(SwgItems.Lightsaber.Lightsaber, LightsaberItemRenderer.INSTANCE);
		ICustomPoseItem.register(SwgItems.Lightsaber.Lightsaber, LightsaberItemRenderer.INSTANCE);

		ICustomItemRenderer.register(SwgItems.Blaster.Blaster, BlasterItemRenderer.INSTANCE);
		ICustomPoseItem.register(SwgItems.Blaster.Blaster, BlasterItemRenderer.INSTANCE);
		ICustomHudRenderer.registerCustomHUD(SwgItems.Blaster.Blaster, BlasterHudRenderer.INSTANCE);

		ClientPlayNetworking.registerGlobalReceiver(SwgPackets.S2C.PacketSyncBlasters, (minecraftClient, clientPlayNetworkHandler, packetByteBuf, packetSender) -> {
			if (blasterLoader != null)
				blasterLoader.handlePacket(minecraftClient, clientPlayNetworkHandler, packetByteBuf, packetSender);
			else
				Lumberjack.error("Attempted to sync blaster descriptors without initializing the client loader!");
		});
	}
}
