package com.parzivail.swg.gui;

import com.parzivail.swg.container.ContainerSabaccTable;
import com.parzivail.swg.gui.modern.ModernButton;
import com.parzivail.swg.proxy.Client;
import com.parzivail.swg.registry.QuestRegister;
import com.parzivail.swg.tile.TileSabaccTable;
import com.parzivail.util.binary.ned.NedInteraction;
import com.parzivail.util.binary.ned.NedNode;
import com.parzivail.util.binary.ned.NodeType;
import com.parzivail.util.ui.Fx.D2;
import com.parzivail.util.ui.GLPalette;
import com.parzivail.util.ui.gltk.AttribMask;
import com.parzivail.util.ui.gltk.EnableCap;
import com.parzivail.util.ui.gltk.GL;
import net.minecraft.client.gui.GuiButton;
import net.minecraft.client.gui.ScaledResolution;
import net.minecraft.client.gui.inventory.GuiContainer;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.entity.player.InventoryPlayer;
import net.minecraftforge.common.DimensionManager;
import org.newdawn.slick.Color;
import org.newdawn.slick.opengl.TextureImpl;

import java.util.EnumSet;

public class GuiSabaccTable extends GuiContainer
{
	private final TileSabaccTable tile;
	private final EntityPlayer player;
	private final NedInteraction interaction;

	private ModernButton button0;
	private ModernButton button1;
	private ModernButton button2;
	private ModernButton button3;
	private ModernButton button4;
	private ModernButton button5;
	private final ModernButton[] options = new ModernButton[4];

	private String npcDialogue = "";

	public GuiSabaccTable(InventoryPlayer inventoryPlayer, TileSabaccTable tile)
	{
		super(new ContainerSabaccTable(inventoryPlayer, tile));
		this.tile = tile;

		// We have to use this awful hack because the EntityPlayer that's provided to
		// the Gui through the InventoryPlayer is a strictly client-based player instance
		// and isn't the real one.
		player = (EntityPlayer)DimensionManager.getWorld(inventoryPlayer.player.dimension).getEntityByID(inventoryPlayer.player.getEntityId());

		interaction = QuestRegister.complexQuest.createInteraction(player);
	}

	@Override
	public void initGui()
	{
		super.initGui();

		options[0] = button0 = new ModernButton(0, 10, 10, 30, 10, "OPT1");
		options[1] = button1 = new ModernButton(1, 10, 25, 30, 10, "OPT2");
		options[2] = button2 = new ModernButton(2, 10, 40, 30, 10, "OPT3");
		options[3] = button3 = new ModernButton(3, 10, 55, 30, 10, "OPT4");

		button4 = new ModernButton(4, 10, 70, 30, 10, "Next");
		button5 = new ModernButton(5, 10, 85, 30, 10, "Exit");

		buttonList.add(button0);
		buttonList.add(button1);
		buttonList.add(button2);
		buttonList.add(button3);

		buttonList.add(button4);
		buttonList.add(button5);

		refreshDisplay();
	}

	@Override
	public void drawScreen(int mouseX, int mouseY, float partialTicks)
	{
		super.drawScreen(mouseX, mouseY, partialTicks);

		ScaledResolution sr = Client.resolution;
		float oneOverSr = 1f / sr.getScaleFactor();

		GL.PushAttrib(EnumSet.of(AttribMask.EnableBit, AttribMask.LineBit));
		GL.Enable(EnableCap.Blend);
		GL.Enable(EnableCap.Texture2D);
		GL.PushMatrix();
		GL.Translate(60, 10, 0);
		GL.Scale(oneOverSr);
		TextureImpl.bindNone();
		Client.latoSemibold.drawString(0, 0, npcDialogue, Color.white);
		GL.PopMatrix();
		GL.PopAttrib();
	}

	@Override
	protected void actionPerformed(GuiButton button)
	{
		switch (button.id)
		{
			case 0:
			case 1:
			case 2:
			case 3:
				takeBranch(button.id);
				break;
			case 4:
				movePastNpcDialogue();
				break;
			default:
				break;
		}
	}

	private void movePastNpcDialogue()
	{
		interaction.advance(0);
		refreshDisplay();
	}

	private void refreshDisplay()
	{
		if (interaction.node == null)
			return;

		button5.visible = false;

		if (interaction.node.type == NodeType.NpcDialogue)
		{
			npcDialogue = interaction.node.outputs.get(0).text;
			if (interaction.getNextNode(0).type == NodeType.NpcDialogue)
			{
				button0.visible = button1.visible = button2.visible = button3.visible = false;
				button4.visible = true;

				npcDialogue = interaction.node.outputs.get(0).text;
			}
			else
				movePastNpcDialogue();
		}
		else if (interaction.node.type == NodeType.PlayerDialogue)
		{
			button0.visible = button1.visible = button2.visible = button3.visible = false;
			button4.visible = false;
			NedNode nextNode = interaction.node;

			for (int i = 0; i < nextNode.outputs.size(); i++)
			{
				options[i].setText(nextNode.outputs.get(i).text);
				options[i].visible = true;
			}
		}
		else if (interaction.node.type == NodeType.End)
		{
			button0.visible = button1.visible = button2.visible = button3.visible = button4.visible = false;
			button5.visible = true;
		}
	}

	private void takeBranch(int id)
	{
		interaction.advance(id);
		refreshDisplay();
	}

	@Override
	protected void drawGuiContainerBackgroundLayer(float partialTicks, int mouseX, int mouseY)
	{
		ScaledResolution sr = Client.resolution;
		GL.PushAttrib(AttribMask.EnableBit);
		GL.Disable(EnableCap.Texture2D);
		GL.Color(GLPalette.ALMOST_BLACK);
		D2.DrawSolidRectangle(0, 0, sr.getScaledWidth(), sr.getScaledHeight());
		GL.PopAttrib();
	}
}
