// Pause movement if player is talking
if (instance_exists(obj_dialog)) exit

// Do nothing if in battle
if (instance_exists(obj_battle_manager)) exit

// Limit movement to 1 * move_speed
var _dx = clamp(target_x - x, -1, 1)
var _dy = clamp(target_y - y, -1, 1)

// Move and collide both with walls and other enemies
move_and_collide(_dx * move_speed, _dy * move_speed, [collision_tilemap, obj_enemy_parent], undefined, undefined, undefined, move_speed, move_speed)

// Check if enemy died after battle
if (hp <= 0) {
  // Add player XP after battle
  obj_player.add_xp(xp)
  
  // Destroy enemy after battle
  instance_destroy()
}