extends Node2D

@export var correct_code := [1, 0, 2, 1]

func check_code():
	var current_code = [
		$Dial1.current_value,
		$Dial2.current_value,
		$Dial3.current_value,
		$Dial4.current_value
	]

	#if current_code == correct_code:
		#unlock()

#func unlock():
	#get_tree().change_scene_to_file("res://TargetScene.tscn") #opened box
