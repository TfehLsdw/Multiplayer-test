///@self obj_characterSelectParent
function scr_selectCharacter(_characterId)
{
	var _player = global.myPlayerIndex
	
	global.playerList[_player].currentCharacter = _characterId
	
	scr_sendArray(scr_otherPlayerId(), NETWORK_PACKETS.SEND_ARRAY_ALL_LIST, global.playerList)
}

function scr_whoSelectingMe()
{
	var _arrayLength = array_length(global.playerList)
	
	var _p1connected = (_arrayLength > 0)
	var _p2connected = (_arrayLength > 1)
	
	player1selected = _p1connected && (global.playerList[0].currentCharacter == characterId);
	player2selected = _p2connected && (global.playerList[1].currentCharacter == characterId);
}

function scr_chrSlctSpriteIndex()
{
	var _index = 0;
	if (player1selected) _index += 1;
	if (player2selected) _index += 2;

	return _index;

}