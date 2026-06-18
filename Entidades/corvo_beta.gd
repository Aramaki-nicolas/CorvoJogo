extends CharacterBody2D

var direction_x: float
var speed:= 50
@export var jump_strenght :=400
@export var gravity :=200

func get_input():
	direction_x = Input.get_axis("esquerda","direita")
	if Input.is_action_just_pressed("pulo"):
		velocity.y = -jump_strenght
func apply_gravity(delta):
	velocity.y +=gravity * delta
func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	get_input()
	
	velocity.x = direction_x * speed
	move_and_slide()
