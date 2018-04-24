extends Node2D

onready var spawner = get_node("spawner")
onready var drone_res = preload("res://Scenes/enem_drone.tscn")
export var spawn_range = 0
export var max_drones = 0
var player

func _ready():
	player = get_parent().get_parent().player
	spawner.start()
	

func on_spawn():
	var number = 0
	
	if get_parent().drones < 20:
		number = floor(rand_range(0, 5))
	
	for i in range(number):
		var num = floor(rand_range(0,7))
		var drone = drone_res.instance()
		drone.position = Vector2(rand_range(position.x-spawn_range, position.x+spawn_range), 
		rand_range(position.y-spawn_range, position.y+spawn_range))
		drone.home = self
		get_parent().add_child(drone)

func drone_hit(body, drone):
	pass