function scr_init_audio()
{
	global.audio = {
		music: [],
		sfx: [],
	}
	
	global.audio.music[MUSIC_CHARACTERS.MUS_BALLER] = mus_theme_Baller;
	global.audio.music[MUSIC_CHARACTERS.MUS_MATAN]  = mus_theme_Matan;
	global.audio.music[MUSIC_CHARACTERS.MUS_RAMMUS] = mus_theme_Rammus;

	global.audio.sfx[SOUND_CHARACTERS.SFX_BALLER] = snd_VineBoom;
	global.audio.sfx[SOUND_CHARACTERS.SFX_MATAN]  = snd_rizz;
	global.audio.sfx[SOUND_CHARACTERS.SFX_RAMMUS] = snd_rammusOK;

	
}