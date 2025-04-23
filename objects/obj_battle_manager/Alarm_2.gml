// Battle ended
show_debug_message(obj_battle_enemy.sprite_index)
if (obj_battle_enemy.sprite_index == spr_enemy_boss) {
  // If battle was against the last boss defeat, go to ending room
  room_goto(room_end)
} else {
  // If battle was against a normal enemy, go back to original room
  room_goto(obj_battle_switcher.original_room) 
}