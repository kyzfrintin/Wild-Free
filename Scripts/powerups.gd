extends Node2D

onready var health_up_res = load("res://Scenes/health_up.tscn")
onready var laser_plus_res = load("res://Scenes/laser_plus.tscn")
export var Max_HU = 0
export var Max_LP = 0

func health_pickup(body, pickup):
	var hitname = body.get_name()
	if hitname == "player":
		if pickup.gold:
			body.HP += 50
		else:
			body.HP += 25
		pickup.queue_free()
		pass

func las_pickup(body, pickup):
	var hitname = body.get_name()
	if hitname == "player":
		if pickup.tier == "bronze":
			body.las_mult += 0.05
		if pickup.tier == "silver":
			body.las_mult += 0.08
		if pickup.tier == "gold":
			body.las_mult += 0.12
		pickup.queue_free()
	pass

func _ready():
	#SPAWN HEALTH PICKUPS
	var num = floor(rand_range(10, Max_HU))
	for i in range(num):
		var health = health_up_res.instance()
		health.position = Vector2(rand_range(-1920*8,1920*8), rand_range(-1080*8, 1080*8))
		add_child(health)
		
	#SPAWN LASER MULT PICKUPS
	var num2 = floor(rand_range(5, Max_LP))
	for i in range(num2):
		var las_plus = laser_plus_res.instance()
		las_plus.position = Vector2(rand_range(-1920*8,1920*8), rand_range(-1080*8, 1080*8))
		add_child(las_plus)
