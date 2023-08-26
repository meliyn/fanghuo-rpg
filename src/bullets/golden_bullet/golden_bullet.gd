extends Node2D

var direction: Vector2

@export var speed: float = 200.0


func _ready():
	direction = Vector2(cos(rotation), sin(rotation))


func _process(delta):
	position += delta * speed * direction
