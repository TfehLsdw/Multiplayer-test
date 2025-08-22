function scr_sendImageSequence(_targetSteamId, _currentCharacter)
{
//send the index needed to play the thing with the needed packet type

	var _buf = buffer_create(4, buffer_fixed, 1)
	
	buffer_write(_buf, buffer_u8, NETWORK_PACKETS.SEND_IMAGE_SEQUENCE)
	buffer_write(_buf, buffer_u8, _currentCharacter)
	
	steam_net_packet_send(_targetSteamId, _buf)
	buffer_delete(_buf)
}

function scr_handleSendImageSequence(_buf)
{
	var _sendingChar = buffer_read(_buf, buffer_u8)
	
	scr_triggerImageSequence(_sendingChar, 0)
}