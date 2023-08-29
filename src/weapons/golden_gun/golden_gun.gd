extends WeaponBase

const BULLET: PackedScene = preload("res://src/bullets/golden_bullet/golden_bullet.tscn")
const SPRITE_WIDTH: float = 18

var attackable: bool = true
var cooldown: float = 0.25
var timer: float = 0

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var root: Window = get_tree().get_root()


func _process(delta) -> void:
	super._process(delta)
	look_at(get_global_mouse_position())
	timer += delta
	if timer >= cooldown:
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
		animation_player.stop()
		animation_player.play("recoil")
		attackable = false
