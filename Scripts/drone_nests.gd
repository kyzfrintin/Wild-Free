extends Node2D

onready var nest_res = preload("res://Scenes/drone_factory.tscn")
export var Max_Nests = 0
onready var player = get_parent().get_node("player")
var drones = 0

func _ready():
	return
	var number = floor(rand_range(0, Max_Nests))
	
	for i in range(number):
		var num = floor(rand_range(0,7))
		var nest = nest_res.instance()
		nest.position = Vector2(rand_range(-1920*8, 1920*8), rand_range(-1080*8, 1080*8))
		nest.rotation = rand_range(0,360)
		add_child(nest)
	