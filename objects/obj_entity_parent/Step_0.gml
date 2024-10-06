if global.gamestate = "normal" {
	// move the entity on the screen
	var _active_move_speed = entity_move_speed

	var _move_x = round(x_input * (_active_move_speed + move_buffer))
	var _move_y = round(y_input * (_active_move_speed + move_buffer))

	if x_input != 0 or y_input != 0 {
		move_buffer = move_buffer + (_active_move_speed - abs(_move_x) - abs(_move_y))
	}

	x = x + _move_x
	y = y + _move_y

	// recalculate the entity's center
	entity_center_x = x + (sprite_width / 2)
	entity_center_y = y + (sprite_height / 2)
	
	if entity_current_hp <= 0 {
		if entity_type != "player" {
			instance_destroy(self)
		}
	}
}