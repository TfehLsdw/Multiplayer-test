function scr_sendPlayerGameplayData(_targetSteamId, _sendingPlayerIndex)
{
	var _buffer = buffer_create(8, buffer_grow, 1)
	buffer_write(_buffer, buffer_u8, NETWORK_PACKETS.SEND_PLAYER_GAMEPLAY_DATA);
	buffer_write(_buffer, buffer_u8, _sendingPlayerIndex)
	buffer_write(_buffer, buffer_u8, global.playerData[_sendingPlayerIndex].currentScreen)
	buffer_write(_buffer, buffer_f16, global.playerData[_sendingPlayerIndex].currentY)
	
	steam_net_packet_send(_targetSteamId, _buffer)
	buffer_delete(_buffer)
}

function scr_handleSendPlayerGameplayData(_buffer)
{
	var _sendingPlayer = buffer_read(_buffer, buffer_u8)
	var _newScreen = buffer_read(_buffer, buffer_u8)
	var _newY = buffer_read(_buffer, buffer_f16)
			
	global.playerData[_sendingPlayer].currentScreen = _newScreen
	global.playerData[_sendingPlayer].currentY = _newY
			
}
/* use if need to expand the function with less hardcode

function scr_sendPlayerGameplayData(_targetSteamId, _sendingPlayerIndex)
{
	var _buffer = buffer_create(8, buffer_grow, 1)
	buffer_write(_buffer, buffer_u8, NETWORK_PACKETS.SEND_PLAYER_GAMEPLAY_DATA);
	buffer_write(_buffer, buffer_u8, _sendingPlayerIndex)
	buffer_write(_buffer, buffer_string, scr_playerGameplayData(_sendingPlayerIndex));
	
	steam_net_packet_send(_targetSteamId, _buffer)
	buffer_delete(_buffer)
}

function scr_playerGameplayData(_sendingPlayerIndex)
{
	var pDataRef = global.playerData[_sendingPlayerIndex]

	var	_gameplayData = {
			currentScreen : pDataRef.currentScreen,
			currentY : pDataRef.currentY 
			}
	return json_stringify(_gameplayData)
}
*/
