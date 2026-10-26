extends Control
@onready var loadingbar = $ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if loadingbar.value < 100:
		loadingbar.value += 25 * delta
	else: 
		get_tree().change_scene_to_file("res://scene/game.tscn")
	pass
