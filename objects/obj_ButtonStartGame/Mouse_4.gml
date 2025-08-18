if (global.isHost && scr_checkPlayersReady())
{
	scr_gameStart()
}

//else if (steam_lobby_get_owner_id() == steam_get_user_steam_id() && steam_lobby_get_member_count() != 2)
//{
//	show_debug_message("wait for second player before starting the game")
//}
else
{
	show_debug_message("cant start game")
}
