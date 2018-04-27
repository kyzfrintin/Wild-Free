extends Node2D

onready var spawner = get_node("spawner")
onready var drone_res = preload("res://Scenes/enem_drone.tscn")
onready var drone_boom_res = preload("res://Scenes/explosion.tscn")
onready var multi_splode_res = preload("res://Scenes/multi_splode.tscn")
onready var trail_res = preload("res://scenes/trail.tscn")
onready var hit_snd = get_node("hit_snd")
onready var ding_snd = get_node("hit_snd2")
export var spawn_range = 0
onready var player = get_parent().player
var rot1 = rand_range(-1.3,1.3)
var rot2 = rand_range(-1.3,1.3)
var HP = 1000
var dead = false

func _process(delta):
	get_node("bot_base").rotation += 0.001*rot1
	get_node("top_base").rotation += 0.01*rot2
	if HP < 1 && !dead:
		dead = true
		explode()

func _ready():
	connect("body_entered", get_parent(), "nest_hit", [self])
	spawner.start()
	
func on_spawn():
	var number = 0
	if get_parent().drones < get_parent().Max_Drones - 4:
		number = floor(rand_range(0, 4))
	for i in range(number):
		var drone = drone_res.instance()
		var trail = trail_res.instance()
		drone.position = Vector2(rand_range(position.x-spawn_range, position.x+spawn_range), 
		rand_range(position.y-spawn_range, position.y+spawn_range))
		drone.home = get_parent()
		drone.player = player
		drone.trail = trail
		trail.target = drone
		trail.position = drone.position
		get_parent().add_child(trail)
		get_parent().add_child(drone)
		get_parent().drones += 1
	spawner.wait_time = rand_range(4,10)
	spawner.start()

#func drone_hit(body, drone):
#	var hitname = body.get_name()
#	if body == player:
#		body.hurt(10*drone.strength)
#	if "Laser" in hitname:
#		drone.hit_snd.play()
#		drone.ding_snd.play()
#		drone.damage(body.damage)
#		body.queue_free()
#		if drone.HP < 0:
#			get_parent().drones -= 1
#			var boom = drone_boom_res.instance()
#			boom.position = drone.position
#			boom.scale = drone.scale
#			player.shake = 60*drone.strength
#			get_parent().get_parent().add_child(boom)
#			drone.die()
		
func explode():
	var boom = multi_splode_res.instance()
	boom.position = position
	get_parent().get_parent().add_child(boom)
	get_node("dead_timer").start()

func _on_dead_timer_timeout():
	queue_free()
