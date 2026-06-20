extends Area2D

@onready var interagivel : Area2D = $Interagivel
@onready var sprite_2d: Sprite2D = $Sprite2D
func _ready() -> void:
	interagivel.interact = _on_interact
	
func _on_interact():
	print("Abriu porta")
		
	
