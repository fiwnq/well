// Tracks the entity's attempt to move on both axes
x_input = 0
y_input = 0

entity_type = "none"

// Maximum health and current health of this entity
entity_max_hp = 100.0
entity_current_hp = entity_max_hp

// Base melee attack damage for enemies
entity_melee_damage = 2.0

// Base move speed for this entity
entity_move_speed = 10

// Extra stored movement, used to calculate movement speed correctly
move_buffer = 0

target = noone

// The location of the entity's center
entity_center_x = x + (sprite_width / 2)
entity_center_y = y + (sprite_height / 2)