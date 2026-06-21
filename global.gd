extends Node2D


# Stores the player position across scenes
var player_position: Vector2 = Vector2.ZERO 

# Helper flag to know if we should override the default scene spawn
var use_saved_position: bool = false 
