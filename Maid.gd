extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("timeline1")
	Dialogic.timeline_ended.connect(_on_dialogue_finished)
	Dialogic.start("timeline")


func _on_dialogue_finished():
	get_tree().change_scene_to_file("res://books.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
