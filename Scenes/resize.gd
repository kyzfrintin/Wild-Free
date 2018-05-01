extends Node

onready var viewport = get_viewport()
onready var current_size = Vector2()

var minimum_size = Vector2(1920, 1080)

func _ready():
    viewport.connect("size_changed", self, "window_resize")
    window_resize()

func window_resize():
	current_size = OS.get_window_size()
	var scale_factor = minimum_size.y/current_size.y
	var new_size = Vector2(current_size.x*scale_factor, minimum_size.y)


	if new_size.y < minimum_size.y:
		scale_factor = minimum_size.y/new_size.y
		new_size = Vector2(new_size.x*scale_factor, minimum_size.y)
	if new_size.x < minimum_size.x:
		scale_factor = minimum_size.x/new_size.x
		new_size = Vector2(minimum_size.x, new_size.y*scale_factor)
	
	
	viewport.set_size_override(true, new_size,Vector2(128,128))