steamName = steam_get_persona_name();
isHost = (steam_lobby_get_owner_id() == global.localSteamId)

if (isHost)
{
	scr_addPlayerToList(global.localSteamId)
}