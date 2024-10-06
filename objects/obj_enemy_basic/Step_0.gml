if global.gamestate = "normal" {
	var _target_distance_x
	var _target_distance_y

	if target = noone {
		target = instance_nearest(x, y, obj_player)
	}

	if target != noone {
		_target_distance_x = target.entity_center_x - entity_center_x
		_target_distance_y = target.entity_center_y - entity_center_y
	}

	if _target_distance_x != 0 or _target_distance_y != 0 {
		var _vector = sqrt(sqr(abs(_target_distance_x)) + sqr(abs(_target_distance_y)))
		
		x_input = _target_distance_x / _vector
		y_input = _target_distance_y / _vector
	}
	else {
		x_input = 0
		y_input = 0
	}

	// Inherit the parent event
	event_inherited();
}