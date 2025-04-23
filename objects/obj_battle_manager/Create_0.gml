enemy_turn = 0 // 0 for player's turn, 1 for enemy's turn
damage_to_enemy = 0

function player_attack(_damage) {
  damage_to_enemy = _damage
  enemy_turn = 1
  alarm[0] = 40 // 20 frames for player attack animation, 20 frames for enemy attack animation
  
  // Player attack animation
  obj_battle_player.alarm[0] = 10
}

function check_for_end() {
  // Return true if either player or enemy dies, else return false
  if (obj_battle_enemy.data.hp <= 0 or obj_battle_player.data.hp <= 0) {
    return true
  }
  return false 
}