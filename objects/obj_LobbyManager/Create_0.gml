global.isHost = (steam_lobby_get_owner_id() == global.localSteamId)

if (steam_lobby_get_owner_id() == global.localSteamId) global.myPlayerIndex = 0;
else global.myPlayerIndex = 1;

if (global.isHost)
{
	scr_addPlayerToList(global.localSteamId)
}