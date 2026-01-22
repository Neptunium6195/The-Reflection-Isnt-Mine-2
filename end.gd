extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Dialogic.VAR.portalEnding == true:
		Dialogic.start("end")
		await Dialogic.timeline_ended
	$TextureRect.visible = true
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
