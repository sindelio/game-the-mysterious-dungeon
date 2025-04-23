// Not allow player to move if its the enemy turn
if (obj_battle_manager.enemy_turn == 1) exit

// Not allow action if not fully charged
if (obj_battle_player.data.charge < 1) exit

action()
