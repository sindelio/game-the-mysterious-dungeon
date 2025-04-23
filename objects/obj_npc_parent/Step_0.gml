if (instance_exists(obj_dialog)) exit

if (instance_exists(obj_player) and distance_to_object(obj_player) < 12) {
  can_talk = true
  if (keyboard_check_pressed(input_key)) {
    create_dialog(messages)
  }
} else {
  can_talk = false
}