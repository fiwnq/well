// The camera will be bound to these coordinates, based on the boundaries of the current room
// [0] = minimum x, [1] = maximum x, [2] = minimum y, [3] = maximum y
room_boundary = [-999999, 999999, -999999, 999999]

var _zoom = 1;

view_width = 1920/_zoom;
view_height = 1080/_zoom;

window_scale = _zoom;

window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);