switch(async_load[?"event_type"])
{
	case "lobby_created": //triggered when creating lobby
	
		show_debug_message("lobby created with ID: " + string(steam_lobby_get_lobby_id()));
		steam_lobby_join_id(steam_lobby_get_lobby_id());
		
			break;
			
	case "lobby_joined": //triggered when joining lobby (incl host)
		
		if (steam_lobby_is_owner())
		{
			var _lobbyCode = irandom_range(0000, 9999)
			
			steam_lobby_set_data("isTfehTest", "true");
			steam_lobby_set_data("Creator", steam_get_persona_name())
			steam_lobby_set_data("Code", _lobbyCode)
			steam_lobby_set_joinable(true)
			
			//show_debug_message("lobby code is " + string(steam_lobby_get_data("Code")))
		}
		
		
		room_goto(rm_LobbyMenu)
		
			break;
			
		case "lobby_join_requested": //triggered when asking to join lobby through steam
		
			var _friendLobbyId = async_load[? "lobby_id"];
			steam_lobby_join_id(_friendLobbyId)
			break;
	
		case "lobby_list": //triggered when asking for lobby list with "steam_lobby_list_request"
		
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
