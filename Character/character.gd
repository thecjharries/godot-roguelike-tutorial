@icon("res://Art/v1.1 dungeon crawler 16X16 pixel pack/heroes/knight/knight_idle_anim_f0.png")
extends CharacterBody2D
class_name Character

const FRICTION: float = 0.15

@export var acceleration: int = 40
@export var max_speed: int = 100

var move_direction: Vector2 = Vector2.ZERO

func _physics_process(_delta: float) -> void:
	move_and_slide()
	velocity = lerp(velocity, Vector2.ZERO, FRICTION)

func move() -> void:
	move_direction = move_direction.normalized()
	velocity += move_direction * acceleration
	velocity = velocity.limit_length(max_speed)
