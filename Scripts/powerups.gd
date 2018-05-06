extends Node2D

onready var health_up_res = load("res://Scenes/health_up.tscn")
onready var laser_plus_res = load("res://Scenes/laser_plus.tscn")
onready var healer_res = load("res://Scenes/healer.tscn")
onready var player = get_parent().player
onready var multicannon_res = load("res://Scenes/multicannon.tscn")
onready var text_res = load("res://Scenes/pickup_text.tscn")
onready var can_timer = get_node("multicannon_timer")
var Max_HPU = floor(CustCarrier.drones*0.8)
var Max_LP = floor(CustCarrier.nests * 4)
var Max_HU = floor(CustCarrier.drones * 5)
var Max_MC = floor(CustCarrier.nests * 5)

func max_health_pickup(body, pickup):
	var hitname = body.get_name()
	if hitname == "player":
		var text = text_res.instance()
		text.rect_position = body.global_position
		if pickup.gold:
			text.text = "MAX HP + 20!"
			body.MaxHP += 20
		else:
			text.text = "MAX HP + 10!"
			body.MaxHP += 10
		add_child(text)
		pickup.queue_free()
		pass
		
func health_pickup(body, pickup):
	var hitname = body.get_name()
	if hitname == "player":
		var text = text_res.instance()
		text.rect_position = body.global_position
		if pickup.gold:
			text.text = "HP + 50!"
			body.HP += 50
		else:
			text.text = "HP + 25!"
			body.HP += 25
		pickup.queue_free()
		add_child(text)
		pass

func las_pickup(body, pickup):
	var hitname = body.get_name()
	if hitname == "player":
		var text = text_res.instance()
		text.rect_position = body.global_position
		if pickup.tier == "bronze":
			text.text = " LASER + !"
			body.las_mult += 0.05
		if pickup.tier == "silver":
			text.text = " LASER ++ !"
			body.las_mult += 0.08
		if pickup.tier == "gold":
			text.text = " LASER +++ !!"
			body.las_mult += 0.12
		add_child(text)
		pickup.queue_free()
	pass
	
func multicannon_pickup(body, pickup):
	var hitname = body.get_name()
	if hitname == "player":
		var text = text_res.instance()
		text.rect_position = body.global_position
		if pickup.gold:
			text.text = "TRIPLE CANNON!"
			body.cannons = 3
			can_timer.wait_time = 30
		else:
			text.text = "DOUBLE CANNON!!"
			body.cannons = 2
			can_timer.wait_time = 50
		pickup.queue_free()
		can_timer.start()
		add_child(text)

func _ready():
	#SPAWN MAXHP PICKUPS
	var num = floor(rand_range(10, Max_HPU))
	for i in range(num):
		var HPU = health_up_res.instance()
		HPU.position = Vector2(rand_range(-1920*12,1920*12), rand_range(-1080*12, 1080*12))
		add_child(HPU)
	#SPAWN LASER MULT PICKUPS
	var num2 = floor(rand_range(5, Max_LP))
	for i in range(num2):
		var las_plus = laser_plus_res.instance()
		las_plus.position = Vector2(rand_range(-1920*12,1920*12), rand_range(-1080*12, 1080*12))
		add_child(las_plus)
	#SPAWN HEALTH PICKUPS
	var num3 = floor(rand_range(5, Max_HU))
	for i in range(num3):
		var healer = healer_res.instance()
		healer.position = Vector2(rand_range(-1920*12,1920*12), rand_range(-1080*12, 1080*12))
		add_child(healer)
	#SPAWN MULTICANNON PICKUPS
	var num4 = floor(rand_range(5, Max_MC))
	for i in range(num4):
		var multicannon = multicannon_res.instance()
		multicannon.position = Vector2(rand_range(-1920*12,1920*12), rand_range(-1080*12, 1080*12))
		add_child(multicannon)

func _on_multicannon_timer_timeout():
	player.cannons = 1
