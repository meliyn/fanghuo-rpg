extends CharacterBody2D

@export var speed: float = 200.0
@export var friction: float = 25.0


func _physics_process(_delta: float) -> void:
	var vector: Vector2 = Input.get_vector(
		"control_left", "control_right", "control_up", "control_down"
	)
	if vector:
		velocity = (speed * vector)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction)
	move_and_slide()
