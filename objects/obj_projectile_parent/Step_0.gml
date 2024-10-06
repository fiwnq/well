if global.gamestate = "normal" {
	speed = base_speed
	
	duration -= 1;

	if (duration <=0) {
		instance_destroy(self)
	}
}
else {
	speed = 0
}