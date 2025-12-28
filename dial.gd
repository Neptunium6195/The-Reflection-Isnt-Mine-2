extends Area2D

@export var current_value := 0

var dragging := false
var drag_start_y := 0.0
var accumulated_drag := 0.0
const PIXELS_PER_STEP := 64  # height of one digit in pixels

func _ready():
	update_visual()

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			dragging = true
			drag_start_y = event.position.y  # local to Area2D
			accumulated_drag = 0.0
		else:
			dragging = false

func _process(_delta):
	if not dragging:
		return

	var mouse_y = get_local_mouse_position().y
	var delta = mouse_y - drag_start_y
	drag_start_y = mouse_y
	accumulated_drag += delta

	while abs(accumulated_drag) >= PIXELS_PER_STEP:
		if accumulated_drag > 0:
			increment()
			accumulated_drag -= PIXELS_PER_STEP
		else:
			decrement()
			accumulated_drag += PIXELS_PER_STEP

func increment():
	current_value = (current_value + 1) % 10
	update_visual()

func decrement():
	current_value = (current_value - 1 + 10) % 10
	update_visual()

func update_visual():
	var sprite = get_parent().get_node("Sprite2D")
	var digit_height = sprite.texture.get_height() / 10.0
	sprite.position = Vector2(0, -current_value * digit_height)
