is_paused = false
pause_layer = "PauseLayer"

update_pause = function() {
  if (is_paused) {
    instance_deactivate_all(true)
    layer_set_visible(pause_layer, true)
  } else {
    instance_activate_all()
    layer_set_visible(pause_layer, false)
    layer_set_visible("SettingsLayer", false)
  }
}

update_pause()

layer_set_visible("SettingsLayer", false)