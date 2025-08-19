if(async_load[?"id"] == global.request)
{
	if(async_load[?"status"])
	{
		var _result = async_load[?"result"]
		if(_result != "")
		{
			//show_debug_message("you inputted " + string(_result))
			lobbyCode = _result
			steam_lobby_list_add_string_filter("isTfehTest", "true", steam_lobby_list_filter_eq)
			steam_lobby_list_request()
		}
	}
}