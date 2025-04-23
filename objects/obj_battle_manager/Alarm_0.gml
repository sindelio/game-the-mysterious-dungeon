// Player's turn
// Deal damage to enemy
obj_battle_enemy.data.hp -= damage_to_enemy

// Increase player charge
obj_battle_player.data.charge += 0.4
if (obj_battle_player.data.charge > 1) obj_battle_player.data.charge = 1

// Check if enemy died
if (check_for_end()) {
  alarm[2] = 60
} else {
  alarm[1] = 60
  
  // Enemy attack animation
  obj_battle_enemy.alarm[0] = 30
}