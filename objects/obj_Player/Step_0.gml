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
	
	if (InputPressed(INPUT_VERB.SHOW_IMAGE_SELF))
	{
		scr_triggerImageSequence(currentCharacter, 0)
	}
	
	if (InputPressed(INPUT_VERB.SHOW_IMAGE_OTHER))
	{
		scr_triggerImageSequence(currentCharacter, 1)
	}
	
	if (InputPressed(INPUT_VERB.SHOW_IMAGE_BOTH))
	{
		scr_triggerImageSequence(currentCharacter, 2)
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
	
	if (InputPressed(INPUT_VERB.MOVE_UP))
	{
		currentY -= 1080; 
		needUpdate = true; 
	}
	
	if (InputPressed(INPUT_VERB.MOVE_DOWN))
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
