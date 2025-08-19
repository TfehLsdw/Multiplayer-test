draw_set_font(fnt_gm_20)
draw_set_valign(fa_top)
draw_set_halign(fa_left)


draw_text(50,100,"Lobby ID: " + string(steam_lobby_get_lobby_id()))

draw_text(50,130,"Lobby Code: " + string(steam_lobby_get_data("Code")))

draw_text(50,160,"Owner: " + string(steam_get_user_persona_name_sync(steam_lobby_get_owner_id())))

draw_text(50,190,"Players: " + string(steam_lobby_get_member_count())+ "/2")

for(var i = 0 ; i < steam_lobby_get_member_count() ; i++)
{
	var _memberId = steam_lobby_get_member_id(i)
	draw_text(50,250+i*30,string(i+1)+") "+  string(steam_get_user_persona_name_sync(_memberId)) + " ID: " + string(_memberId))
}