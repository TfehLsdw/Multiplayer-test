// Inherit the parent event
event_inherited();

global.settings.audio.volumeSfx += 0.01;

global.settings.audio.volumeSfx = clamp(global.settings.audio.volumeSfx, 0, 1)