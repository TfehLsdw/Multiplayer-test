if (InputPressed(INPUT_VERB.TOGGLE_FULLSCREEN))
{
	scr_toggleFullscreen()
}

if (InputPressed(INPUT_VERB.BACK_TO_MAIN_MENU))
{
	scr_exitToMainMenu()
}

if (InputPressed(INPUT_VERB.TOGGLE_PAUSE))
{
	scr_togglePause()
	show_debug_message("is game paused?: " + string(global.paused))
}
