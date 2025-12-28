extends Node2D

const SPEED = 60

var  direction = 1

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var rey_cast_left: RayCast2D = $ReyCastLeft
@onready var rey_cast_right: RayCast2D = $ReyCastRight

func _physics_process(delta: float) -> void:
	if rey_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	elif rey_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		
	position.x += direction * SPEED * delta
