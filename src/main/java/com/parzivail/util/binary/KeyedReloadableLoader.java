package com.parzivail.util.binary;

import com.google.common.collect.Maps;
import net.minecraft.resource.ResourceManager;
import net.minecraft.resource.SinglePreparationResourceReloader;
import net.minecraft.util.Identifier;
import net.minecraft.util.profiler.Profiler;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

public abstract class KeyedReloadableLoader<T> extends SinglePreparationResourceReloader<Map<Identifier, T>>
{
	private static final Logger LOGGER = LogManager.getLogger();
	private final String fileSuffix;
	private final int fileSuffixLength;
	private final String startingPath;

	public KeyedReloadableLoader(String startingPath, String fileExtension)
	{
		this.startingPath = startingPath;
		fileSuffix = "." + fileExtension;
		fileSuffixLength = fileSuffix.length();
	}

	public abstract T readResource(ResourceManager resourceManager, Profiler profiler, InputStream stream) throws IOException;

	protected Map<Identifier, T> prepare(ResourceManager resourceManager, Profiler profiler)
	{
		Map<Identifier, T> map = Maps.newHashMap();
		var i = this.startingPath.length() + 1;
		var resources = resourceManager.findResources(this.startingPath, (s) -> {
			return s.endsWith(fileSuffix);
		});

		for (var resourceId : resources)
		{
			var resourcePath = resourceId.getPath();
			var resourceIdWithoutExt = new Identifier(resourceId.getNamespace(), resourcePath.substring(i, resourcePath.length() - fileSuffixLength));

			try (var resource = resourceManager.getResource(resourceId))
			{
				try (var inputStream = resource.getInputStream())
				{
					var element = readResource(resourceManager, profiler, inputStream);
					if (element != null)
					{
						var popped = map.put(resourceIdWithoutExt, element);
						if (popped != null)
							throw new IllegalStateException("Duplicate data file ignored with ID " + resourceIdWithoutExt);
					}
					else
						LOGGER.error("Couldn't load data file {} from {} as it's null or empty", resourceIdWithoutExt, resourceId);
				}
			}
			catch (Exception ex)
			{
				LOGGER.error("Couldn't parse data file {} from {}", resourceIdWithoutExt, resourceId, ex);
			}
		}

		return map;
	}
}

