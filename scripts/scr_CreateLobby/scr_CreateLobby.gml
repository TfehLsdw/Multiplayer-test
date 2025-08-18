function Scr_CreateLobby()
{
	//global.server = instance_create_depth(0,0,0, obj_ClientHost)
	steam_lobby_create(steam_lobby_type_public, 2)
}