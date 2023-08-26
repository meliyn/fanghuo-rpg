class_name WeaponBase
extends Node2D


func _process(_delta) -> void:
	if Input.is_action_just_pressed("control_attack"):
		_just_attacked()
	if Input.is_action_pressed("control_attack"):
		_attacked()
	if Input.is_action_just_released("control_attack"):
		_just_stop_attacked()


func _attacked() -> void:
	pass


func _just_attacked() -> void:
	pass


func _just_stop_attacked() -> void:
	pass
