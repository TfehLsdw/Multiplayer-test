settingsLayer = layer_get_id("layer_settings")

instance_create_layer(0, 0, settingsLayer,obj_darkness)
instance_create_layer(800, 400, settingsLayer,obj_button_musicVolume)
instance_create_layer(800, 600, settingsLayer,obj_button_sfxVolume)

instance_deactivate_layer(settingsLayer)