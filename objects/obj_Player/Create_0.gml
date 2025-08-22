isLocal = (steamId == global.localSteamId);

if (isLocal)
{
playerCamera = camera_create_view(0,0,1920,1080)

view_set_camera(0, playerCamera)

scr_playMusic(currentCharacter, true)
}

characterSprite = global.sprites.char[currentCharacter]

y = currentY;
//inside each player instance will be the code to perform the actions that are available
//but only the actions for the current screen will work 
// note: maybe make each action a script that way the checks work way better because the script is the action logic and its easier to modify each






