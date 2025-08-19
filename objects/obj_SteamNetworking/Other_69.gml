switch(async_load[?"event_type"])
{
	case "lobby_created":
	
		show_debug_message("lobby created with ID: " + string(steam_lobby_get_lobby_id()));
		steam_lobby_join_id(steam_lobby_get_lobby_id());
		
			break;
			
	case "lobby_joined":
		
		if (steam_lobby_is_owner())
		{
			var _lobbyCode = irandom_range(0000, 9999)
			
			steam_lobby_set_data("isTfehTest", "true");
			steam_lobby_set_data("Creator", steam_get_persona_name())
			steam_lobby_set_data("Code", _lobbyCode)
			show_debug_message("lobby code is " + string(steam_lobby_get_data("Code")))
		}
		
		room_goto(rm_LobbyMenu)
		
			break;
		
		case "lobby_list":
		
			var _lobbyCount = steam_lobby_list_get_count()
			
			if(_lobbyCount == 0)
			{
				show_debug_message("no lobbies found")
			}
			for (var i = 0; i < _lobbyCount; i++)
			{
				var _lobbyId = steam_lobby_list_get_lobby_id(i)
				var _joinCode = steam_lobby_list_get_data(i, "Code")
				
				if (_joinCode == lobbyCode)
				{
					steam_lobby_join_id(_lobbyId)
					break;
				}
				else
				{
					show_debug_message("no lobbies with code found")
				}
			}
			
		break;
}
