draw_self()

// Set HP bar draw position
var _x = xstart - 22
var _y = ystart + 20
var _w = 20
var _h = 4
var _scale = 2

// Draw HP bar background without color
draw_sprite_stretched(spr_box, 0, _x, _y, _w * _scale, _h * _scale)

// Draw current HP with color
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _w * _scale * (data.hp / data.hp_total), _h * _scale, c_green, 1)

// Prepare to draw the charge bar

// Increment vertical position by the height of the HP bar
_y += _h + 2

// The charge bar has less height than the HP bar
_h = 2
// Draw charge bar background without color
draw_sprite_stretched(spr_box, 0, _x, _y, _w * _scale, _h * _scale)

// Draw current charge with color
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _w * _scale * data.charge, _h * _scale, c_aqua, 1)