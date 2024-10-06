camera_set_view_size(view_camera[0], view_width, view_height);

if(instance_exists(obj_player)){
	var _x = clamp((obj_player.x + (obj_player.sprite_width / 2)) - view_width / 2, room_boundary[0], room_boundary[1] - view_width);
	var _y = clamp((obj_player.y + (obj_player.sprite_height / 2)) - view_height / 2, room_boundary[2], room_boundary[3] - view_height);
	
	camera_set_view_pos(view_camera[0], _x, _y)
}




