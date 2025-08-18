function scr_sendExecuteFunction(_targetSteamId, _function)
{
	var _buffer = buffer_create(4, buffer_fixed, 1);
	
	buffer_write(_buffer, buffer_u8, NETWORK_PACKETS.SEND_EXECUTE_FUNCTION);
	buffer_write(_buffer, buffer_u8, _function);
	
	steam_net_packet_send(_targetSteamId, _buffer)
	buffer_delete(_buffer)
}