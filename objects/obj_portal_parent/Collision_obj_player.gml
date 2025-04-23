// Make the next_room non persistent, meaning next_room will be recreated
// This means all enemies will respawn
// Note: The room_persistent flag blocks attempts to restart_room() if it is set to true
room_persistent[next_room] = false;

// Go to the room, which will be recreated
// Note that all rooms are persistent by default via the editor GUI
// This means that when a room is recreated, it will become persistent again
// This is important because enering/leaving battle should not recreate the current environment room
room_goto(next_room)

// Set the player position according to the portal
obj_player.x = pos_x
obj_player.y = pos_y