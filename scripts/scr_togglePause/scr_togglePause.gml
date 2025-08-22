///@self obj_manager_settings
function scr_togglePause()
{
	if (!global.paused)
	{
		instance_activate_layer(settingsLayer)
		global.paused = true
	}
	else if (global.paused)
	{
		instance_deactivate_layer(settingsLayer)
		global.paused = false
	}
	
}