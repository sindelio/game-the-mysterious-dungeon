// We set up the camera view 0 manually 
// So no stuttering occurs

// Get camera 0 ID (or viewport 0)
var _cam = view_camera[0]

// Get camera width and height
var _cam_w = camera_get_view_width(_cam)
var _cam_h = camera_get_view_height(_cam)

// Calculate the camera position centered on player
var _cam_x = obj_player.x - _cam_w / 2
var _cam_y = obj_player.y - _cam_h / 2

// Limit the camera boundaries so it does not go outside the room
_cam_x = clamp(_cam_x, 0, room_width - _cam_w)
_cam_y = clamp(_cam_y, 0, room_height - _cam_h)

// Update the camera position
camera_set_view_pos(_cam, _cam_x, _cam_y)