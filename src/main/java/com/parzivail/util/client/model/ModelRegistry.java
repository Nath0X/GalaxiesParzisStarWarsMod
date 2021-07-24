/*******************************************************************************
 * Copyright 2019 grondag
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License.  You may obtain a copy
 * of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations under
 * the License.
 ******************************************************************************/

package com.parzivail.util.client.model;

import com.parzivail.pswg.client.render.model.ConnectedTextureModel;
import net.fabricmc.fabric.api.client.model.ModelProviderContext;
import net.fabricmc.fabric.api.client.model.ModelVariantProvider;
import net.minecraft.block.Block;
import net.minecraft.block.ConnectingBlock;
import net.minecraft.client.render.block.BlockModels;
import net.minecraft.client.render.model.UnbakedModel;
import net.minecraft.client.texture.SpriteAtlasTexture;
import net.minecraft.client.util.ModelIdentifier;
import net.minecraft.client.util.SpriteIdentifier;
import net.minecraft.util.Identifier;
import net.minecraft.util.registry.Registry;

import java.util.HashMap;

public enum ModelRegistry implements ModelVariantProvider
{
	INSTANCE;

	private static final HashMap<ModelIdentifier, UnbakedModel> models = new HashMap<>();

	public static void registerConnected(ConnectingBlock block)
	{
		registerConnected(block, true, true, true, null);
	}

	public static void registerConnected(ConnectingBlock block, boolean hConnect, boolean vConnect, boolean lConnect, Identifier capTexture)
	{
		var id = Registry.BLOCK.getId(block);
		register(block, true, new ConnectedTextureModel.Unbaked(
				hConnect, vConnect, lConnect,
				new SpriteIdentifier(SpriteAtlasTexture.BLOCK_ATLAS_TEXTURE, new Identifier(id.getNamespace(), "block/" + id.getPath())),
				new SpriteIdentifier(SpriteAtlasTexture.BLOCK_ATLAS_TEXTURE, new Identifier(id.getNamespace(), "block/" + id.getPath() + "_border")),
				capTexture == null ? null : new SpriteIdentifier(SpriteAtlasTexture.BLOCK_ATLAS_TEXTURE, capTexture)
		));
	}

	public static void register(Block block, boolean registerInventoryModel, ClonableUnbakedModel unbakedModel)
	{
		var blockId = Registry.BLOCK.getId(block);
		if (registerInventoryModel)
			models.put(new ModelIdentifier(blockId, "inventory"), unbakedModel.copy());
		for (var state : block.getStateManager().getStates())
		{
			var id = new ModelIdentifier(blockId, BlockModels.propertyMapToString(state.getEntries()));
			models.put(id, unbakedModel.copy());
		}
	}

	@Override
	public UnbakedModel loadModelVariant(ModelIdentifier modelId, ModelProviderContext context)
	{
		return models.get(modelId);
	}
}
