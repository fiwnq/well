if global.gamestate = "normal" {
	game_time += 1
	
	spawn_points += .003 + (.000001 * game_time)
	
	if spawn_points >= 1 and instance_exists(obj_player) {
		// set spawnpoint to outer corners, at random
		var _x_spawn = window_get_width() / 2 * ((round(random(1)) * 2) - 1)
		var _y_spawn = window_get_height() / 2 * ((round(random(1)) * 2) - 1)
		
		// one axis at random is chosen to have a location
		if round(random(1)) = 1 {
			_x_spawn = round(random(window_get_width() / 2) * ((round(random(1)) * 2) - 1)) - sprite_get_width(object_get_sprite(obj_enemy_basic)) / 2
		}
		else {
			_y_spawn = round(random(window_get_height() / 2) * ((round(random(1)) * 2) - 1)) - sprite_get_height(object_get_sprite(obj_enemy_basic)) / 2
		}
		
		// move the sprite off screen
		if _x_spawn = window_get_width() / 2 * -1 {
			_x_spawn -= sprite_get_width(object_get_sprite(obj_enemy_basic))
		}
		else if _y_spawn = window_get_height() / 2 * -1 {
			_y_spawn -= sprite_get_height(object_get_sprite(obj_enemy_basic))
		}
		
		instance_create_layer(obj_player.entity_center_x + _x_spawn, obj_player.entity_center_y + _y_spawn, "Instances", obj_enemy_basic)
		spawn_points -= 1
	}
}
else if global.gamestate = "game_over" {
	game_time = 0
	
	spawn_points = 0
}