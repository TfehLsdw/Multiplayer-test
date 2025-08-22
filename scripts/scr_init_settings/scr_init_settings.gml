function scr_init_settings()
{
	var _settingsFile = "settings.json";
	
	if (file_exists(_settingsFile))
	{
		var _buf = buffer_load(_settingsFile)
		var _json = buffer_read(_buf, buffer_text)
		buffer_delete(_buf)
		
		global.settings = json_parse(_json)
	}
	else
	{
		global.settings = {
		video : {
			fullscreen: true
			},
		audio : { //50 MEANS x50 AUDIO OUCH MY EARS
			volumeMusic : 0.1,
			volumeSfx : 0.5
			},
		}
		scr_save_settings()
	}
}

function scr_save_settings()
{
	var _json = json_stringify(global.settings)
	var _buf = buffer_create(4, buffer_grow, 1)
	
	buffer_write(_buf, buffer_text, _json)
	buffer_save(_buf, "settings.json");
	
	buffer_delete(_buf)
}