draw_self()

draw_set_font(fnt_gm_20)
draw_set_valign(fa_top)
draw_set_halign(fa_left)


draw_text(x+600,y,"steamId: " + string(steamId))

draw_text(x+600,y+30,"playerNumber: " + string(playerNumber))

draw_text(x+600,y+60,"currentScreen: " + string(currentScreen))

draw_text(x+600,y+90,"steamName: " + string(steamName))

draw_text(x+600,y+120,"currentCharacter: " + string(currentCharacter))

draw_text(x+600,y+150,"currentY: " + string(currentY))

sprite_index = characterSprite
image_index = playerNumber;