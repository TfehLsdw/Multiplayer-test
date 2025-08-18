function scr_otherPlayerId()
{

for (var i = 0; i < array_length(global.playerList); i++)
	{
		if (global.playerList[i].steamId != global.localSteamId)
		{
			return global.playerList[i].steamId;
		}
	}
	return noone;
}