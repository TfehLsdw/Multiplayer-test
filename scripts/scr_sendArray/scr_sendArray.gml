///@desc function to send an entire array to the target
function scr_sendArray(_targetSteamId, _packet, _array)
{
	var _buffer = buffer_create(8, buffer_grow, 1);
	
	buffer_write(_buffer, buffer_u8, _packet);
	buffer_write(_buffer, buffer_string, json_stringify(_array));
	
	steam_net_packet_send(_targetSteamId, _buffer)
	buffer_delete(_buffer)
}

///@desc function to recieve the entire array and replace its own version with the recieved
function scr_handleSendArrayAll(_buffer, _oldArray)
{
	var _newArray = buffer_read(_buffer, buffer_string)
			_newArray = json_parse(_newArray)
			_oldArray = _newArray;
}