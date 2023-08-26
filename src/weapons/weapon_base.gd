class_name WeaponBase
extends Node2D


func _process(_delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("control_attack"):
		_just_attacked()
	if Input.is_action_pressed("control_attack"):
		_attacked()


func _just_attacked():
	pass


func _attacked():
	pass
