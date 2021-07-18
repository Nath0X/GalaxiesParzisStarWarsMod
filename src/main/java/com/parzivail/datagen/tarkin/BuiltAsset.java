package com.parzivail.datagen.tarkin;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.stream.JsonWriter;
import com.parzivail.pswg.Resources;
import com.parzivail.util.Lumberjack;
import net.minecraft.util.Identifier;
import org.apache.commons.io.FileUtils;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class BuiltAsset
{
	static final Gson GSON = new GsonBuilder().disableHtmlEscaping().create();

	protected final Path file;
	protected final JsonElement contents;

	protected BuiltAsset(Path file, JsonElement contents)
	{
		this.file = file;
		this.contents = contents;
	}

	private static Path getResourcePath(String slug, Identifier identifier)
	{
		return AssetGenerator.getRootDir().resolve(Paths.get(slug, identifier.getNamespace(), identifier.getPath()));
	}

	private static Path getAssetPath(Identifier identifier)
	{
		return getResourcePath("assets", identifier);
	}

	private static Path getDataPath(Identifier identifier)
	{
		return getResourcePath("data", identifier);
	}

	private static Path getBlockstatePath(Identifier identifier)
	{
		return getAssetPath(IdentifierUtil.concat("blockstates/", identifier, ".json"));
	}

	private static Path getBlockModelPath(Identifier identifier)
	{
		return getAssetPath(IdentifierUtil.concat("models/block/", identifier, ".json"));
	}

	private static Path getItemModelPath(Identifier identifier)
	{
		return getAssetPath(IdentifierUtil.concat("models/item/", identifier, ".json"));
	}

	private static Path getLangPath(Identifier identifier)
	{
		// /assets/minecraft/lang/en_us.json
		return getAssetPath(IdentifierUtil.concat("lang/", identifier, ".json"));
	}

	private static Path getLootTablePath(Identifier identifier)
	{
		return getDataPath(IdentifierUtil.concat("loot_tables/", identifier, ".json"));
	}

	private static Path getRecipePath(Identifier identifier)
	{
		return getDataPath(IdentifierUtil.concat("recipes/tarkin/", identifier, ".json"));
	}

	public static BuiltAsset blockstate(Identifier identifier, JsonElement contents)
	{
		Lumberjack.log("Created blockstate %s", identifier);
		return new BuiltAsset(getBlockstatePath(identifier), contents);
	}

	public static BuiltAsset blockModel(Identifier identifier, JsonElement contents)
	{
		Lumberjack.log("Created block model %s", identifier);
		return new BuiltAsset(getBlockModelPath(identifier), contents);
	}

	public static BuiltAsset itemModel(Identifier identifier, JsonElement contents)
	{
		Lumberjack.log("Created item model %s", identifier);
		return new BuiltAsset(getItemModelPath(identifier), contents);
	}

	public static BuiltAsset lang(Identifier identifier, JsonElement contents)
	{
		Lumberjack.log("Created lang entry %s", contents.toString());
		return new JsonObjKeyInsBuiltAsset(getLangPath(identifier), contents);
	}

	public static BuiltAsset lootTable(Identifier identifier, JsonElement contents)
	{
		Lumberjack.log("Created loot table %s", identifier);
		return new BuiltAsset(getLootTablePath(identifier), contents);
	}

	public static BuiltAsset recipe(Identifier identifier, JsonElement contents)
	{
		Lumberjack.log("Created recipe %s", identifier);
		return new BuiltAsset(getRecipePath(identifier), contents);
	}

	public static void nukeRecipeDir() throws IOException
	{
		var dummyAsset = getRecipePath(Resources.id("dummy"));

		var parentDir = dummyAsset.getParent();

		if (!Files.exists(parentDir))
			return;

		FileUtils.cleanDirectory(parentDir.toFile());
	}

	public static void mergeLanguageKeys(Identifier localeNewKeys, Identifier locateDestination) throws IOException
	{
		var pathNew = getLangPath(localeNewKeys);
		var pathDest = getLangPath(locateDestination);

		JsonObject newEntries;
		try (Reader reader = Files.newBufferedReader(pathNew, StandardCharsets.UTF_8))
		{
			newEntries = GSON.fromJson(reader, JsonObject.class);
		}

		JsonObject destEntries;
		try (Reader reader = Files.newBufferedReader(pathDest, StandardCharsets.UTF_8))
		{
			destEntries = GSON.fromJson(reader, JsonObject.class);
		}

		for (var entry : destEntries.entrySet())
		{
			var newMember = newEntries.get(entry.getKey());
			if (newMember != null)
			{
				var oldValue = entry.getValue().getAsString();
				newEntries.addProperty(entry.getKey(), oldValue);
			}
		}

		Files.delete(pathNew);

		try (
				Writer writer = Files.newBufferedWriter(pathDest, StandardCharsets.UTF_8);
				var jsonWriter = new JsonWriter(writer)
		)
		{
			jsonWriter.setIndent("\t");
			GSON.toJson(newEntries, jsonWriter);
		}
	}

	public void write()
	{
		try
		{
			Files.createDirectories(file.getParent());

			try (Writer writer = Files.newBufferedWriter(file, StandardCharsets.UTF_8)) {
				GSON.toJson(contents, writer);
			}
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
	}

	public String getFilename()
	{
		return file.toAbsolutePath().toString();
	}
}
