global.playerList = [];
global.playerData = [];

global.isHost = false;
global.localSteamId = steam_get_user_steam_id()
global.myPlayerIndex = -1

global.paused = false

scr_init_settings()
instance_create_layer(0,0,"Instances",obj_manager_settings)

scr_init_audio()
scr_init_sprites()

window_set_fullscreen(global.settings.video.fullscreen)

randomize();
