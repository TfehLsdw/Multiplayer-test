steam_lobby_list_add_string_filter("isTfehTest","true",steam_lobby_list_filter_eq)
steam_lobby_list_request()
show_debug_message(string(steam_lobby_list_get_count()))