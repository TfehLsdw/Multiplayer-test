//@desc adds a player to the list according to its steam ID
function scr_addPlayerToList(_steamId)
{	
		var _playerListSlot = array_length(global.playerList);
		
		array_push(global.playerList, scr_defaultPlayerList(_steamId, _playerListSlot))
}

//THIS REMOVES ALL PLAYERS FROM LIST, NEED FIX
function scr_removePlayerFromList(_steamId)
{
	
	for (var i = 0; i < array_length(global.playerList); i++)
	{
		if(global.playerList[i].steamId == _steamId)
		{
			global.playerList = array_delete(global.playerList, i, 1)
			
			show_debug_message("removed " + string(global.playerList[i].steamName) + " from the lobby")
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
	for (var i = 0; i < array_length(global.playerList); i++)
	{
		if (global.playerList[i].steamId == global.localSteamId)
		{
			if (global.playerList[i].readyStatus == 0)
			{
				global.playerList[i].readyStatus = 1
			}
		
			else if ( global.playerList[i].readyStatus == 1)
			{
				global.playerList[i].readyStatus = 0
			}
			
			break;
		}
	}
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

function scr_defaultPlayerList(_steamId, _slot)
{
	var _steamName = steam_get_user_persona_name_sync(_steamId)
	
	return {
			steamId : _steamId,
			steamName : _steamName,
			playerNumber : _slot,
			currentCharacter : _slot,
			readyStatus : 0
		}
}