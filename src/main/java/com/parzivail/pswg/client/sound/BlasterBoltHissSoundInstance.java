package com.parzivail.pswg.client.sound;

import com.parzivail.pswg.container.SwgSounds;
import com.parzivail.pswg.entity.BlasterBoltEntity;
import com.parzivail.util.sound.DopplerSoundInstance;
import net.fabricmc.api.EnvType;
import net.fabricmc.api.Environment;
import net.minecraft.sound.SoundCategory;

@Environment(EnvType.CLIENT)
public class BlasterBoltHissSoundInstance extends DopplerSoundInstance
{
	public BlasterBoltHissSoundInstance(BlasterBoltEntity entity)
	{
		super(entity, SwgSounds.Blaster.HISS, SoundCategory.PLAYERS);
		this.repeat = true;
		this.repeatDelay = 0;
		this.volume = 0.0f;
	}

	public boolean canPlay()
	{
		return !this.source.isSilent();
	}

	public boolean shouldAlwaysPlay()
	{
		return true;
	}

	public void tick()
	{
		super.tick();

		if (this.source.isRemoved())
		{
			this.setDone();
			return;
		}

		this.volume = 1;
		this.x = (float)this.source.getX();
		this.y = (float)this.source.getY();
		this.z = (float)this.source.getZ();
	}
}
