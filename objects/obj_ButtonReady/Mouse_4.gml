scr_updateReadyStatus()

scr_sendArray(scr_otherPlayerId(), NETWORK_PACKETS.SEND_ARRAY_ALL_LIST, global.playerList)

if (image_index != 2)
{
	image_index = 2
	text = "Ready!"
}
else 
{
	image_index = 0;
	text = "not Ready"
}