extends CharacterBody2D

@export var speed: float = 300.0


func _physics_process(_delta):
	velocity = (
		speed * Input.get_vector("control_left", "control_right", "control_up", "control_down")
	)
	move_and_slide()
