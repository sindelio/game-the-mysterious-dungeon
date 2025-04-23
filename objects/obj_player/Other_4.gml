// When entering an exploration room, update the colission tilemap ID
// So that collisions work
if (room != room_battle and room != room_end) {
  colission_tilemap = layer_tilemap_get_id("Tiles_Collision")
  
  // As the player object is persistent, we need to make it visible/invisible
  // so that it does not show in the battle room
  visible = true
}
