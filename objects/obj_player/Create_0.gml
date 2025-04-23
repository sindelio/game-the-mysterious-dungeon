text_font = undefined

// Play soundtrack
is_track_playing = false

// Exploration stats
move_speed = 1.5

// Battle stats
hp_total = 10
hp = hp_total
damage = 1
charge = 0
level = 1
xp = 0
xp_to_next_level = 100

colission_tilemap = layer_tilemap_get_id("Tiles_Collision")

function add_xp(_xp) {
  xp += _xp
  if (xp >= xp_to_next_level) {
    xp = 0
    xp_to_next_level = round(xp_to_next_level * 1.4)
    level += 1
    damage += 1
    hp_total += 5
    hp = hp_total
    msgs_level_up = [
      {
        type: "Level up",
        name: "Congrats",
        msg: "You have leveled up!" 
      },
      {
        type: "Level up",
        name: "Congrats",
        msg: $"Your new stats are:\nHP: {hp_total}\nDamage: {damage}\n" 
      },
    ]
    create_dialog(msgs_level_up)
  }
}