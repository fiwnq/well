if other.entity_type = "enemy" and i_frames <= 0 {
	entity_current_hp -= other.entity_melee_damage
	i_frames = base_i_frames
}
