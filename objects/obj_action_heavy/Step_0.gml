// if its the enemy's turn or the charge is not full, disable the charge bar
if (obj_battle_manager.enemy_turn == 1 or obj_battle_player.data.charge < 1) {
  image_alpha = 0.2
} else {
  image_alpha = 1
}