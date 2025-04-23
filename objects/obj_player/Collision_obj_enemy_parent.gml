// Do not enter battle if the battle still exists
if (instance_exists(obj_battle_switcher)) exit
  
// If not in battle, enter battle
var _switcher = instance_create_depth(0, 0, 0, obj_battle_switcher)

// Gather data to start battle
_switcher.player_data = self
_switcher.enemy_data = other
_switcher.original_room = room

// Go to battle room
room_goto(room_battle)

// As the player object is persistent, we need to make it visible/invisible
// so that it does not show in the battle room
visible = false