// Dialog box position
var _dx = 0
var _dy = gui_h * 0.7

// Dialog box dimensions
var _boxw = gui_w
var _boxh = gui_h - _dy

// Draw dialog box background without color
draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh)

// Speaker name position
_dx += 16
_dy += 16

// Speaker name and type
var _name = messages[current_message].name
var _type = messages[current_message].type

// Set speaker text color based on his type
draw_set_color(global.text_colors[$ _type])

// Draw speaker name
draw_text(_dx, _dy, _name)

// Reset text color
draw_set_color(c_white)

// Message position
_dy += 40


// Draw the actual message in the dialog box
draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2)