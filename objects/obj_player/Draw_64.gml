// Set horizontal and vertical alignment to easily center drawings
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// HP bar position
var _x = 20
var _y = 20

// HP bar dimensions
var _w = 200
var _h = 30

// Draw HP bar background without color
draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h)

// Draw HP bar current value with color
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _w * (hp / hp_total), _h, c_red, 1)

// Draw HP text info
draw_text(_x + _w / 2, _y + _h / 2 - 2, $" HP: {hp}/{hp_total}")

// Draw XP bar sligthly bellow HP bar
_y += 40

//Draw XP bar background without color
draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h)

//Draw XP bar current value with color
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _w * (xp / xp_to_next_level), _h, c_aqua, 1)

//Draw XP text info
draw_text(_x + _w / 2, _y + _h / 2 - 2, $"XP: {xp}/{xp_to_next_level}")

// Draw level text info
_y += 30
draw_text(_x + _w / 2, _y + _h / 2, $"Level: {level}")

// Reset draw alignment variables
draw_set_halign(fa_left)
draw_set_valign(fa_top)