switch(async_load[?"event_type"])
{
	case "lobby_created":
	
		show_debug_message("lobby created with ID: " + string(steam_lobby_get_lobby_id()));
		steam_lobby_join_id(steam_lobby_get_lobby_id());
		
			break;
			
	case "lobby_joined":
		
		if (steam_lobby_is_owner())
		{
			steam_lobby_set_data("isTfehTest", "true");
			steam_lobby_set_data("Creator", steam_get_persona_name())
		}
		
		room_goto(rm_LobbyMenu)
		
			break;
		
		case "lobby_list":
		
			for (var i = 0; i < steam_lobby_list_get_count(); i++)
			{
				var ins = instance_create_depth(x + 700, y + 200 + 40 * i, -5, obj_LobbyListSlot)
				ins.index = i;
				ins.lobbyId = steam_lobby_list_get_lobby_id(i);
				ins.lobbyOwner = steam_lobby_list_get_data(i, "Creator")
			}
			
		break;
}
