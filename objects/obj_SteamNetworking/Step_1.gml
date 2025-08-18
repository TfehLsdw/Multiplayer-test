while (steam_net_packet_receive())
{

	var _sender = steam_net_packet_get_sender_id()
	steam_net_packet_get_data(inbuf)
	buffer_seek(inbuf, buffer_seek_start, 0)
	
	var _packet = buffer_read(inbuf, buffer_u8)
	
	switch (_packet)
	{
		case NETWORK_PACKETS.SEND_ARRAY_ALL_LIST:
			scr_handleSendArrayAll(inbuf, global.playerList)
				break;
				
		case NETWORK_PACKETS.SEND_ARRAY_ALL_DATA:
			scr_handleSendArrayAll(inbuf, global.playerData)
				break;
		case NETWORK_PACKETS.SEND_EXECUTE_FUNCTION:
			
			var _function = buffer_read(inbuf, buffer_u8)
				switch (_function)
					{
						case NETWORK_FUNCTIONS.GAME_START_CLIENT:
							scr_gameStartClient()
							break;
					}
				break;
					
		
		default:
		show_debug_message("packet unknown")
			break;
	}
	
}