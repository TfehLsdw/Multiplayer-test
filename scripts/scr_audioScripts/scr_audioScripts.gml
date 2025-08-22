///@desc only works for character sounds because im too lazy to add any distinction, would need a cleaner system for actual game
function scr_playSfx(_soundIndex)
{
	var _soundId = global.audio.sfx[_soundIndex]
	
	audio_play_sound(_soundId, 1, false, global.settings.audio.volumeSfx)
}

function scr_playMusic(_musicIndex, _doLoop = false)
{
	var _soundId = global.audio.music[_musicIndex]
	
	audio_play_sound(_soundId, 1, _doLoop, global.settings.audio.volumeMusic)
}