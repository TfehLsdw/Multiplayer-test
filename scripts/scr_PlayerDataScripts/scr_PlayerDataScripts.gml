//@desc initalizes the player data whenever needed
function scr_initPlayerData()
{
	global.playerData = [];

	for (var i = 0; i < array_length(global.playerList); i++)
	{
		array_push(global.playerData,scr_defaultPlayerData(i));
	}
}

///@desc returns the default values according to the requested slot
function scr_defaultPlayerData(_slot)
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
function scr_pushPlayerData()
{	
	global.playerData[playerNumber].currentScreen = currentScreen;
	global.playerData[playerNumber].currentY = currentY;		
			//show_debug_message("player data pushed")
}

///@desc makes sure all player data inside each object is equal to the data from the array
function scr_refreshPlayerGameplayData()
{
	var _PlayerList = global.playerData
	
		for (var i = 0; i<array_length(_PlayerList); i++)
		{
			with (_PlayerList[i].playerObject) 
			{
				currentScreen = _PlayerList[i].currentScreen;
				currentY = _PlayerList[i].currentY;
				show_debug_message("updated player " + string(i))
			}
		}
		
}