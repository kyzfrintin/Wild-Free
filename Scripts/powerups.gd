extends Node2D

onready var health_up_res = load("res://Scenes/health_up.tscn")
export var Max_Pickups = 0

func pickup(body, pickup):
	var hitname = body.get_name()
	if hitname == "player":
		if pickup.gold:
			if body.HP < 50:
				body.HP += 50
			else:
				body.HP = 100
		else:
			if body.HP < 75:
				body.HP += 25
			else:
				body.HP = 100
		pickup.queue_free()
		pass

func _ready():
	#SPAWN HEALTH PICKUPS
	var num = floor(rand_range(10, Max_Pickups))
	for i in range(num):
		var health = health_up_res.instance()
		health.position = Vector2(rand_range(-1920*8,1920*8), rand_range(-1080*8, 1080*8))
		add_child(health)
