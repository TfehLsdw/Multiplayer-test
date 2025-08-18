function scr_gameStartHost()
{	
	scr_initPlayerData() //initialize player data list
	scr_sendArray(scr_otherPlayerId(), NETWORK_PACKETS.SEND_ARRAY_ALL_DATA, global.playerData)//sync up the playerData list
	scr_sendExecuteFunction(scr_otherPlayerId(), NETWORK_FUNCTIONS.GAME_START_CLIENT)
	room_goto(rm_GameRoom) //go to the room
	scr_SpawnPlayers() //spawn the players
	
}

function scr_gameStartClient()
{
	room_goto(rm_GameRoom)
	scr_SpawnPlayers()
}