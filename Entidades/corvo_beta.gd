extends CharacterBody2D

var direction_x: float
var speed:= 100
var sceneName



func _on_area_2d_area_entered(area: Area2D) -> bool:
	return true
func get_input():
	direction_x = Input.get_axis("esquerda","direita")
	
	if Input.is_action_just_pressed("AbrirInventario"):
		print("Abriu")
	#mudar entre mundos
	if Input.is_action_just_pressed("mudar"):
		sceneName = get_tree().current_scene.name;
		Global.player_position = global_position
		Global.use_saved_position = true
		if sceneName =="FaseTeste":
			
			get_tree().change_scene_to_file("res://fases/fase_teste_mortos.tscn")
		else:
			get_tree().change_scene_to_file("res://fases/fase_teste.tscn")

	
			
func _physics_process(delta: float) -> void:
	if Global.use_saved_position:
		global_position=Global.player_position
		Global.use_saved_position=false
	get_input()
	
	velocity.x = direction_x * speed
	move_and_slide()
