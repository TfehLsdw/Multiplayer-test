//y = global.playerList[playerNumber].currentY;

if (isLocal)
{
	if (currentScreen == 0)
	{
		camera_set_view_pos(playerCamera, 0, 0)
	}
	else if (currentScreen == 1)
	{
		camera_set_view_pos(playerCamera, 0, 1080)
	}
	
	var needUpdate = false;
	
	if (keyboard_check_pressed(ord("X")))
	{
		scr_PlaySound(snd_VineBoom);
	}
	
	if (keyboard_check_pressed(ord("E")))
	{
		currentScreen = 1; 
		needUpdate = true; 
	}
	
	if (keyboard_check_pressed(ord("Q")))
	{
		currentScreen = 0; 
		needUpdate = true; 
	}
	
	if (keyboard_check_pressed(ord("W")))
	{
		currentY -= 1080; 
		needUpdate = true; 
	}
	
	if (keyboard_check_pressed(ord("S")))
	{
		currentY += 1080; 
		needUpdate = true; 
	}
	
	if (needUpdate)
	{
		scr_pushPlayerData()
		scr_sendPlayerGameplayData(scr_otherPlayerId(), playerNumber)
	}
}
y = currentY
