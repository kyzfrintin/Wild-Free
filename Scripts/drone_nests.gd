extends Node2D

onready var nest_res = preload("res://Scenes/drone_factory.tscn")
onready var drone_boom_res = load("res://Scenes/explosion.tscn")
export var Max_Nests = 0
export var Max_Drones = 0
onready var player = get_parent().get_node("player")
var drones = 0
var nests

func _ready():
	var number = floor(rand_range(Max_Nests/2, Max_Nests))
	nests = number
	for i in range(number):
		var num = floor(rand_range(0,7))
		var nest = nest_res.instance()
		nest.position = Vector2(rand_range(-1920*7, 1920*7), rand_range(-1080*7, 1080*7))
		nest.rotation = rand_range(0,360)
		add_child(nest)

func nest_hit(body, nest):
	var hitname = body.get_name()
	if "Laser" in hitname:
		nest.HP -= body.damage
		body.queue_free()
		nest.hit_snd.play()
		nest.ding_snd.play()
		
func drone_hit(body, drone):
	var hitname = body.get_name()
	if body == player:
		body.hurt(10*drone.strength)
	if "Laser" in hitname:
		drone.hit_snd.play()
		drone.ding_snd.play()
		drone.damage(body.damage)
		body.queue_free()
		if drone.HP < 0:
			drones -= 1
			var boom = drone_boom_res.instance()
			boom.position = drone.position
			boom.scale = drone.scale
			player.shake = 60*drone.strength
			get_parent().add_child(boom)
			drone.die()