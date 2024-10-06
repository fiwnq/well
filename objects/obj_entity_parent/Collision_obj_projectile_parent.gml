if entity_type != other.owner.entity_type and (array_contains(other.has_damaged, self) == false) {
	entity_current_hp -= other.base_damage
	array_push(other.has_damaged, self)
	
	if other.pierce = 0 {
		instance_destroy(other)
	}
	else {
		other.pierce -= 1
	}
}