function scr_toggleFullscreen()
{
	if (!window_get_fullscreen())
	{
	window_set_fullscreen(true)
	global.settings.video.fullscreen = true
	}
	else if (window_get_fullscreen())
	{
	window_set_fullscreen(false)
	global.settings.video.fullscreen = false
	}
	
}