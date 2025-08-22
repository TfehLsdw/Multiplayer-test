global.playerList = [];
global.playerData = [];

global.isHost = false;
global.localSteamId = steam_get_user_steam_id()
global.myPlayerIndex = -1

scr_init_settings()
instance_create_depth(0,0,0,obj_manager_settings)

scr_init_audio()
scr_init_sprites()

window_set_fullscreen(true)

randomize();
