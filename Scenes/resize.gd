extends Node

onready var viewport = get_viewport()
onready var current_size = Vector2()

var minimum_size = Vector2(1920, 1080)

func _ready():
    viewport.connect("size_changed", self, "window_resize")
    window_resize()

func window_resize():
	OS.window_maximized = true