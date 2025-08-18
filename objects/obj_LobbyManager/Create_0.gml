global.isHost = (steam_lobby_get_owner_id() == global.localSteamId)

if (global.isHost)
{
	scr_addPlayerToList(global.localSteamId)
}