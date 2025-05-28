switch (button_id) {
	case 0: // Resume
    obj_pause_manager.is_paused = false
    obj_pause_manager.update_pause()
    break
  case 1: // Going to settings
    layer_set_visible("PauseLayer", false)
    layer_set_visible("SettingsLayer", true)
    break
  case 2: // Quit
    game_end()
    break
  case 3: // Back from settings
    layer_set_visible("PauseLayer", true)
    layer_set_visible("SettingsLayer", false)
    break
  default:
}