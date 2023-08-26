extends WeaponBase

const BULLET: PackedScene = preload("res://src/bullets/golden_bullet/golden_bullet.tscn")
const SPRITE_WIDTH: float = 18

var attackable: bool = true
var timer: float = 0

@onready var root: Window = get_tree().get_root()


func _process(delta) -> void:
	super._process(delta)
	look_at(get_global_mouse_position())
	timer += delta
	if timer >= 0.1:
		attackable = true
		timer = 0


func _attacked() -> void:
	if attackable:
		var bullet_instance = BULLET.instantiate()
		bullet_instance.global_position = (
			global_position + Vector2(cos(rotation), sin(rotation)) * SPRITE_WIDTH
		)
		bullet_instance.rotation = rotation
		root.add_child(bullet_instance)
		attackable = false
