switch(async_load[? "event_type"])
	{
		case "lobby_chat_update":
		
		var _requestingId = async_load[? "user_id"];
		var _change_flags = async_load[? "change_flags"]
				//show_debug_message("Flags: " + string(async_load[? "change_flags"]));
				//show_debug_message("ID: " + string(_requestingId));
			//switch (_change_flags)
			//{
			//	case steam_lobby_member_change_entered:
			//		if (global.isHost)
			//		{
			//			show_debug_message("player " + steam_get_user_persona_name_sync(_requestingId) + " joined the lobby" );
	
			//			scr_addPlayerToList(_requestingId)
			//			scr_sendArray(_requestingId, NETWORK_PACKETS.SEND_ARRAY_ALL_LIST, global.playerList)
			//		}
			//		break;
					
			//	case steam_lobby_member_change_disconnected:
			//		show_debug_message("player " + steam_get_user_persona_name_sync(_requestingId) + " left the lobby" );
				
			//		scr_removePlayerFromList(_requestingId)
			//		global.isHost = (steam_lobby_get_owner_id() == global.localSteamId)
			//		break;
					
			//}
			
			if (_change_flags & steam_lobby_member_change_entered)
			{
				if (global.isHost)
				{
					show_debug_message("player " + steam_get_user_persona_name_sync(_requestingId) + " joined the lobby" );
	
					scr_addPlayerToList(_requestingId)
					scr_sendArray(_requestingId, NETWORK_PACKETS.SEND_ARRAY_ALL_LIST, global.playerList)
				}
			}	
	
			if (_change_flags & steam_lobby_member_change_left)
			{
				show_debug_message("player " + steam_get_user_persona_name_sync(_requestingId) + " left the lobby" );
				
				scr_removePlayerFromList(_requestingId)
				global.isHost = (steam_lobby_get_owner_id() == global.localSteamId)
			}
				break;
	}
