if (InputPressed(INPUT_VERB.TOGGLE_FULLSCREEN))
{
	if (!window_get_fullscreen())
	{
	window_set_fullscreen(true)
	}
	else if (window_get_fullscreen())
	{
	window_set_fullscreen(false)
	}
	
}