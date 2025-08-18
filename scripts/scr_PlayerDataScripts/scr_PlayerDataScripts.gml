//@desc initalizes the player data whenever needed
function scr_initPlayerData()
{
	global.playerData = [];

	for (var i = 0; i < array_length(global.playerList); i++)
	{
		array_push(global.playerData,scr_DefaultPlayerData(i));
	}
}

///@desc returns the default values according to the requested slot
function scr_DefaultPlayerData(_slot)
{
	return {
			playerNumber : _slot,
			currentScreen : _slot,
			currentY : _slot*500,
			playerObject : noone
	}
}


///@self obj_Player
///@desc Pushes the current player data into the array
function scr_PushPlayerData()
{	
	var _PlayerList = global.playerData
			
			_PlayerList[playerNumber].currentScreen = currentScreen;
			_PlayerList[playerNumber].currentY = currentY;
			
			//show_debug_message("player data pushed")
}

///@desc makes sure all player data inside each object is equal to the data from the array
function scr_RefreshPlayerData(_index = noone)
{
	var _PlayerList = global.playerData
	
	if (_index == noone)
	{
		for (var i = 0; i<array_length(_PlayerList); i++)
		{
			with (_PlayerList[i].playerObject) 
			{
				currentScreen = _PlayerList[i].currentScreen;
				currentY = _PlayerList[i].currentY;
			}
		}
	}
	
	else
	{
		var pIndex = _index;
		
		with (_PlayerList[pIndex].playerObject) 
		{
			currentScreen = _PlayerList[pIndex].currentScreen;
			currentY = _PlayerList[pIndex].currentY;
		}
		
	}
	
//show_debug_message("all player data refreshed")

}