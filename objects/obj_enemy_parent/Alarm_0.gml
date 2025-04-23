// Routine to check for player distance
if (instance_exists(obj_player) and distance_to_object(obj_player) < 80) {
  target_x = obj_player.x
  target_y = obj_player.y
} else {
  target_x = random_range(xstart - 100, xstart + 100)
  target_y = random_range(ystart - 100, ystart + 100)
}

// Repeat the check every second
alarm[0] = 60
