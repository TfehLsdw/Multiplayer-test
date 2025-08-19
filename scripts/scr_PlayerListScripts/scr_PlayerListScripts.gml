//@desc adds a player to the list according to its steam ID
function scr_addPlayerToList(_steamId)
{			
		array_push(global.playerList, scr_defaultPlayerList(_steamId))
}

function scr_removePlayerFromList(_steamId)
{
	
	for (var i = 0; i < array_length(global.playerList); i++)
	{
		if(global.playerList[i].steamId == _steamId)
		{
			// show_debug_message("removed " + string(global.playerList[i].steamName) + " from the lobby")
			
			array_delete(global.playerList, i, 1)
			
			scr_refreshPlayerListNumber()
			
			break;
		}
	}
}

function scr_refreshPlayerListNumber()
{
	var _listLength = array_length(global.playerList)
	
	for (var i = 0; i < _listLength; i++)
	{
		global.playerList[i].playerNumber = i
	}
	
}


function scr_updateReadyStatus()
{
	var _playerList = global.playerList
	for (var i = 0; i < array_length(_playerList); i++)
	{
		if (_playerList[i].steamId == global.localSteamId)
		{
			if (_playerList[i].readyStatus == 0)
			{
				_playerList[i].readyStatus = 1
			}
		
			else if (_playerList[i].readyStatus == 1)
			{
				_playerList[i].readyStatus = 0
			}
			
			break;
		}
	}
	scr_sendArray(scr_otherPlayerId(), NETWORK_PACKETS.SEND_ARRAY_ALL_LIST, global.playerList)
}

function scr_checkPlayersReady()
{
	for (var i = 0; i < array_length(global.playerList); i++)
	{
		if (global.playerList[i].readyStatus == 0)
		{
			return false;
		}
	}
	
	return true;
}

function scr_defaultPlayerList(_steamId)
{
	var _steamName = steam_get_user_persona_name_sync(_steamId)
	var _slot = array_length(global.playerList)
	var _char = _slot;
	
	for (var i = 0; i < _slot; i++)
	{
		if(global.playerList[i].currentCharacter == 1)
		{
			_char = 0
			break;
		}
	}
	
	return {
			steamId : _steamId,
			steamName : _steamName,
			playerNumber : _slot,
			currentCharacter : _char,
			readyStatus : 0
		}
}