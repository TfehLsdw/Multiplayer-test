draw_self()

draw_set_font(fnt_gm_20)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

draw_text(50,0,"fullscreen: " + string(global.settings.video.fullscreen))

draw_text(50,30,"music volume: " + string(global.settings.audio.volumeMusic))

draw_text(50,60,"sfx volume: " + string(global.settings.audio.volumeSfx))
