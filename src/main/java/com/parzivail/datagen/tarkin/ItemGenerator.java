package com.parzivail.datagen.tarkin;

import net.minecraft.item.Item;
import net.minecraft.tag.Tag;
import net.minecraft.util.registry.Registry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.function.Function;

public class ItemGenerator
{

	public static ItemGenerator itemNoModel(Item block)
	{
		return new ItemGenerator(block);
	}

	public static ItemGenerator itemNoModelLangEntry(Item block)
	{
		return itemNoModel(block)
				.lang(LanguageProvider::ofItem);
	}

	static ItemGenerator basic(Item item)
	{
		return itemNoModelLangEntry(item)
				.model(ModelFile::item);
	}

	static ItemGenerator tool(Item item)
	{
		return itemNoModelLangEntry(item)
				.model(ModelFile::handheld_item);
	}

	static ItemGenerator spawn_egg(Item item)
	{
		return itemNoModelLangEntry(item)
				.model(ModelFile::spawn_egg);
	}

	static ItemGenerator empty(Item block)
	{
		return itemNoModelLangEntry(block)
				.model(ModelFile::empty);
	}

	private LanguageProvider languageProvider;
	private final List<Tag.Identified<?>> tags;

	private final Item item;
	private final Collection<ModelFile> itemModels;

	ItemGenerator(Item item)
	{
		this.item = item;

		itemModels = new ArrayList<>();
		tags = new ArrayList<>();
	}

	public ItemGenerator model(Function<Item, ModelFile> modelFunc)
	{
		this.itemModels.add(modelFunc.apply(item));
		return this;
	}

	public ItemGenerator lang(Function<Item, LanguageProvider> languageFunc)
	{
		languageProvider = languageFunc.apply(item);
		return this;
	}

	public ItemGenerator tag(Tag.Identified<?> tag)
	{
		this.tags.add(tag);
		return this;
	}

	public ItemGenerator tag(Tag<?> tag)
	{
		if (!(tag instanceof Tag.Identified<?> id))
			throw new RuntimeException("Tag is not identified");
		return tag(id);
	}

	public void build(List<BuiltAsset> assets)
	{
		// models
		itemModels.forEach(modelFile -> assets.add(BuiltAsset.itemModel(modelFile.getId(), modelFile.build())));

		if (languageProvider != null)
			assets.add(languageProvider.build());

		for (var tag : tags)
			TagGenerator.forObject("tags/items", tag, Registry.ITEM.getId(item)).build(assets);
	}
}
