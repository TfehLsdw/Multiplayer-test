draw_self()
draw_set_font(fnt_gm_15)
draw_set_valign(fa_top)
draw_set_halign(fa_left)


draw_text(bbox_left, bbox_top + 30,"Lobby ID: " + string(lobbyId))

draw_text(bbox_left, bbox_top + 60,"Owner: " + string(lobbyOwner))