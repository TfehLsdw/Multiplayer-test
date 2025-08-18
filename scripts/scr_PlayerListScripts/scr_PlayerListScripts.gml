//@desc adds a player to the list according to its steam ID
function scr_addPlayerToList(_steamId)
{
	var _requestingName = steam_get_user_persona_name_sync(_steamId)
		
		var _playerListSlot = array_length(global.playerList);
		
		array_push(global.playerList,
		{
			steamId : _steamId,
			steamName : _requestingName,
			playerNumber : _playerListSlot,
			currentCharacter : _playerListSlot,
			readyStatus : 0
		})
}

function scr_removePlayerFromList(_steamId)
{
	
	for (var i = 0; i < array_length(global.playerList); i++)
	{
		if(global.playerList[i].steamId == _steamId)
		{
			global.playerList = array_delete(global.playerList, i, 1)
			
			break;
		}
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