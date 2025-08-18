function scr_SpawnPlayers()
{
	with obj_Player instance_destroy();	
	var _playerLayer = layer_get_id("Instances")
	
	var _listArray = global.playerList;
	var _dataArray = global.playerData;
	
	for (var i = 0; i < array_length(global.playerList); i++)
	{
		
		var _inst = instance_create_layer(500, _dataArray[i].currentY, _playerLayer, obj_Player, {
		
				steamId : _listArray[i].steamId,
				steamName : _listArray[i].steamName,
				playerNumber : _listArray[i].playerNumber,
				currentCharacter : _listArray[i].currentCharacter,
				
				currentScreen : _dataArray[i].currentScreen,
				currentY : _dataArray[i].currentY
		})
		_dataArray[i].playerObject = _inst
	}
}