extends Area2D

func _ready():
	connect("area_entered", Callable(self, "_on_entered"))
