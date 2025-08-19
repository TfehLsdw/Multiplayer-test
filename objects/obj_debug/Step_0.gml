var needUpdate = false;

	if (keyboard_check_pressed(ord("M")))
	{
		audio_play_sound(snd_VineBoom, 0, 0, 0.1, 0, 50)
	}
	
	if (keyboard_check_pressed(ord("O")))
	{
		global.playerData[1].currentScreen = 1; 
		needUpdate = true; 
	}
	
	if (keyboard_check_pressed(ord("U")))
	{
		global.playerData[1].currentScreen = 0; 
		needUpdate = true; 
	}
	
	if (keyboard_check_pressed(ord("I")))
	{
		global.playerData[1].currentY -= 1080; 
		needUpdate = true; 
	}
	
	if (keyboard_check_pressed(ord("K")))
	{
		global.playerData[1].currentY += 1080; 
		needUpdate = true; 
	}
	
		if (needUpdate == true)
		
		{
			scr_refreshPlayerGameplayData()
		}
//im trying to make it so there are 2 seperate objects of the same instance that get controlled by simply changing the variable
//this is because its basically the only way I get to control what actually happens ingame so I need to be able to seperate them