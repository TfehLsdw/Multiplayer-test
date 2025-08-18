function scr_gameStart()
{
	if (global.isHost)
	{
		scr_initPlayerData() //initialize player data list
		scr_sendArray(scr_otherPlayerId(), NETWORK_PACKETS.SEND_ARRAY_ALL_DATA, global.playerData)//sync up the playerData list
		scr_sendExecuteFunction(scr_otherPlayerId(), NETWORK_FUNCTIONS.GAME_START)
	}
	room_goto(rm_GameRoom)
}