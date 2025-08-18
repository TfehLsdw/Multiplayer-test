function scr_exitToMainMenu()
{
	steam_lobby_leave()
	var _emptyArray = []
	
	global.playerList = []
	global.playerData = []
	global.isHost = false;
	with obj_LobbyManager instance_destroy()
	room_goto(rm_MainMenu)
}