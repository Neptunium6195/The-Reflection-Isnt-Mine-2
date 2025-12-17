extends Node2D
var placedCorrectly = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if placedCorrectly == 3:
		$label1.visible = true
		await get_tree().create_timer(10.0).timeout
		get_tree().change_scene_to_file("res://story.tscn")
	pass
