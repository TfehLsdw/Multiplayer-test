while (steam_net_packet_receive())
{

	var _sender = steam_net_packet_get_sender_id()
	steam_net_packet_get_data(inbuf)
	buffer_seek(inbuf, buffer_seek_start, 0)
	
	var _packet = buffer_read(inbuf, buffer_u8)
	
	switch (_packet)
	{
		case NETWORK_PACKETS.SEND_ARRAY_ALL_LIST:
			global.playerList = scr_handleSendArrayAll(inbuf)
				break;
				
		case NETWORK_PACKETS.SEND_ARRAY_ALL_DATA:
			global.playerData = scr_handleSendArrayAll(inbuf)
				break;
				
		case NETWORK_PACKETS.SEND_PLAYER_GAMEPLAY_DATA:
			scr_handleSendPlayerGameplayData(inbuf)
			scr_refreshPlayerGameplayData()
				break;
			
		case NETWORK_PACKETS.SEND_EXECUTE_FUNCTION:
			
			var _function = buffer_read(inbuf, buffer_u8)
				switch (_function)
					{
						case NETWORK_FUNCTIONS.GAME_START:
							scr_gameStart()
							break;
					}
				break;
				
		case NETWORK_PACKETS.SEND_IMAGE_SEQUENCE:
			scr_handleSendImageSequence(inbuf)
				break;
			
		
		default:
		show_debug_message("packet unknown")
			break;
	}
	
}