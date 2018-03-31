package com.parzivail.swg.weapon.blastermodule;

import com.parzivail.swg.weapon.blastermodule.barrel.BarrelDefault;
import com.parzivail.swg.weapon.blastermodule.barrel.BlasterBarrel;
import com.parzivail.swg.weapon.blastermodule.grip.BlasterGrip;
import com.parzivail.swg.weapon.blastermodule.grip.GripNone;
import com.parzivail.swg.weapon.blastermodule.scope.*;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.item.ItemStack;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class BlasterAttachments
{
	public static final HashMap<Integer, BlasterAttachment> ATTACHMENTS = new HashMap<>();

	public static final List<BlasterAttachment> SCOPES = new ArrayList<>();
	public static final List<BlasterAttachment> BARRELS = new ArrayList<>();
	public static final List<BlasterAttachment> GRIPS = new ArrayList<>();

	public static BlasterScope scopeIronsights = new ScopeIronsights();
	public static BlasterGrip gripNone = new GripNone();
	public static BlasterBarrel barrelDefault = new BarrelDefault();

	static
	{
		register(scopeIronsights, SCOPES);
		register(new ScopeRedDot(), SCOPES);
		register(new ScopeReflex(), SCOPES);
		register(new ScopeRingReticle(), SCOPES);
		register(new ScopeAcog(), SCOPES);
		register(new ScopeSpitfire(), SCOPES);

		register(barrelDefault, BARRELS);

		register(gripNone, GRIPS);
	}

	private static void register(BlasterAttachment attachment, List<BlasterAttachment> collection)
	{
		ATTACHMENTS.put(attachment.getId(), attachment);
		collection.add(attachment);
	}

	public static boolean doesPlayerOwn(EntityPlayer player, BlasterAttachment attachment)
	{
		return attachment == scopeIronsights || attachment == gripNone || attachment == barrelDefault;

		// TODO: check ownership

	}

	public static boolean isEquipped(ItemStack blaster, BlasterAttachment attachment)
	{
		// TODO: check equipment
		return false;
	}
}
