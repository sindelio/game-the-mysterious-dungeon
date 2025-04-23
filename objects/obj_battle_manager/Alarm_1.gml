// Enemy's turn
// Deal damage to player
var _enemy_damage = obj_battle_enemy.data.damage * random_range(0.7, 1.2)
obj_battle_player.data.hp -= _enemy_damage

// Next is player's turn
enemy_turn = 0

// Check if player died
if (check_for_end()) {
  alarm[2] = 60
}