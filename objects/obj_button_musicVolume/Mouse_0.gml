// Inherit the parent event
event_inherited();

global.settings.audio.volumeMusic += 0.01;

global.settings.audio.volumeMusic = clamp(global.settings.audio.volumeMusic, 0, 1)