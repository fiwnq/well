if global.gamestate = "normal" {
	x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"))
	y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"))

	var _active_move_speed = entity_move_speed

	if x_input != 0 and y_input != 0 {
		_active_move_speed = _active_move_speed / sqrt(2)
	}	

	// move the entity on the screen
	x = x + x_input * _active_move_speed
	y = y + y_input * _active_move_speed

	// recalculate the entity's center
	entity_center_x = x + (sprite_width / 2)
	entity_center_y = y + (sprite_height / 2)

	if i_frames > 0 {
		i_frames -= 1
	}
	
	var _nearest_target = 999999
	with obj_entity_parent {
		
		if entity_type = "enemy" {
			var _distance = point_distance(entity_center_x, entity_center_y, other.entity_center_x, other.entity_center_y)
			if  _distance < _nearest_target {
				_nearest_target = _distance
				other.target = self
			}
		}
	}
	
	if weapon_test_projectile >= 1 and target != noone and weapon_test_projectile_cooldown <= 0 {
		
		var _projectile = obj_projectile_parent
		var _scale = 0.5
		var _inst = instance_create_layer(entity_center_x - (sprite_get_width(object_get_sprite(_projectile)) * _scale) / 2, entity_center_y - (sprite_get_height(object_get_sprite(_projectile)) * _scale) / 2, "Instances", _projectile);
		with (_inst) {
			image_xscale = _scale
			image_yscale = _scale
			direction = point_direction(x + sprite_width / 2, y + sprite_height / 2, other.target.entity_center_x, other.target.entity_center_y)
			owner = other
			base_damage = 10
		}
		
		weapon_test_projectile_cooldown = weapon_test_projectile_base_cooldown
	}
	else if weapon_test_projectile >= 1 {
		weapon_test_projectile_cooldown -= 1
	}
	
	if entity_current_hp <= 0 {
		game_over()
	}
}