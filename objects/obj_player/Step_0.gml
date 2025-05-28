// Pause game movement if player is talking
if (instance_exists(obj_dialog)) exit
  
// Pause exploration if player is in battle
// This is important to avoid the bug where the player is able to enter a wall in exploration
// and get stuck inside after the battle ends
if (room == room_battle) exit

// Player keyboard input
var _dx = keyboard_check(vk_right) - keyboard_check(vk_left)
var _dy = keyboard_check(vk_down) - keyboard_check(vk_up)

// Normalize the vector if moving diagonally
if (_dx != 0 and _dy != 0) {
  var _dir = point_direction(0, 0, _dx, _dy)
  _dx = lengthdir_x(1, _dir)
  _dy = lengthdir_y(1, _dir)
}

// Main movement function
move_and_collide(_dx * move_speed, _dy * move_speed, [colission_tilemap, obj_npc_parent], undefined, undefined, undefined, move_speed, move_speed)

// Clamp the player position inside the screen, so it does not go out of bounds
x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);

// Sprite animation if moving
if (_dx != 0 or _dy != 0) {
  if (_dy > 0) sprite_index = spr_player_walk_down
  else if (_dy < 0) sprite_index = spr_player_walk_up
  else if (_dx > 0) sprite_index = spr_player_walk_right
  else if (_dx < 0) sprite_index = spr_player_walk_left
} else { // Sprite if idle
  if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down
  else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up
  else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right
  else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left
}

// Check if player died after battle and restart game
if (hp <= 0 ) {
  game_restart()
}