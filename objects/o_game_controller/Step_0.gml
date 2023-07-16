surface_resize(application_surface, window_get_width(), window_get_height());
var _camera = camera_create_view(0,0, window_get_width() / 2, window_get_height() / 2,0, o_player, -1,-1,  window_get_width() /2 , window_get_height() / 2)
view_set_camera(0, _camera);