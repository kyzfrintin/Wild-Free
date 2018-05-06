extends Node2D

onready var res_pool = get_parent().get_node("ResourcePreloader")
onready var FX_LAYER = get_parent().get_node("FX")
onready var nest_res = res_pool.get_resource("drone_factory")
onready var drone_boom_res = res_pool.get_resource("explosion")
onready var level = get_parent()
var Max_Nests = floor(CustCarrier.nests)
var Max_Drones = floor(CustCarrier.drones)
onready var player = get_parent().get_node("player")
var drones = []
var nests
var clear = false

signal clear

func _ready():
	var number = floor(rand_range(Max_Nests/2, Max_Nests))
	nests = number
	for i in range(number):
		var num = floor(rand_range(0,7))
		var nest = nest_res.instance()
		nest.level = level
		nest.position = Vector2(rand_range(-1920*7, 1920*7), rand_range(-1080*7, 1080*7))
		nest.rotation = rand_range(0,360)
		add_child(nest)
	connect("clear", level, "on_clear")

func _process(delta):
	if (nests == 0) and (drones.size() == 0) and !clear:
		clear = true
		emit_signal("clear")

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
		body.hurt(drone.damage)
	if "Laser" in hitname:
		drone.hit_snd.play()
		drone.ding_snd.play()
		drone.sprite.modulate.r = 4
		drone.sprite.modulate.g = 6
		drone.sprite.modulate.b = 2
		drone.hit_timer.start()
		drone.hit_part.emitting = true
		drone.damage(body.damage)
		body.queue_free()
		if drone.HP < 0:
			if drones.size() > 1:
				var droneid = drones.find(drone,0)
				drones.remove(droneid)
			else: 
				drones.clear()
			level.score += floor(500 + drone.distance/20)
			var boom = drone_boom_res.instance()
			boom.position = drone.position
			boom.scale = drone.scale*1.8
			if !level.player_dead:
				player.shake = 60*drone.strength
			FX_LAYER.add_child(boom)
			drone.die()