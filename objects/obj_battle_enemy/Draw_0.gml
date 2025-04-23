draw_self()

// Set HP bar draw position
var _x = xstart - 20
var _y = ystart + 20
var _w = 20
var _h = 4
var _scale = 2

// Draw HP bar background without color
draw_sprite_stretched(spr_box, 0, _x, _y, _w * _scale, _h * _scale)

// Draw current HP with color
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _w * _scale * (data.hp / data.hp_total), _h * _scale, c_red, 1)