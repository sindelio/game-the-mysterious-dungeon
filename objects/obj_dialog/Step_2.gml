if (current_message < 0) exit
  
var _str = messages[current_message].msg

if (current_char < string_length(_str)) {
  current_char += char_speed * (1 + real(keyboard_check(input_key)))
  draw_message = string_copy(_str, 0, current_char)
} else if (keyboard_check_pressed(input_key)) {
  current_message += 1
  if (current_message >= array_length(messages)) {
    instance_destroy()
  } else {
    current_char = 0
  }
}