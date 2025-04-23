// Draw shadow bellow NPCs
draw_shadow(1)

// Draw NPC original sprite
draw_self()

// Draw talk sprite if close enough and not already in dialog
if (can_talk and not instance_exists(obj_dialog)) {
  draw_sprite(spr_talk, 0, x, y - 16)
}