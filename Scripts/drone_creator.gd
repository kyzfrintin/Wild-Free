extends Node2D


onready var res_pool = get_parent().res_pool
onready var drone_res = res_pool.get_resource("drone")
onready var drone_boom_res = res_pool.get_resource("explosion")
onready var multi_splode_res = res_pool.get_resource("multi_splode")
onready var trail_res = res_pool.get_resource("trail")
onready var spawner = get_node("spawner")
onready var hit_snd = get_node("hit_snd")
onready var ding_snd = get_node("hit_snd2")
export var spawn_range = 0
onready var player = get_parent().player
var rot1 = rand_range(-1.3,1.3)
var rot2 = rand_range(-1.3,1.3)
var HP = 1000
var dead = false
var pos
var level

func _process(delta):
	get_node("bot_base").rotation += 0.001*rot1
	get_node("top_base").rotation += 0.01*rot2
	if HP < 1 && !dead:
		dead = true
		explode()

func _ready():
	pos = position
	connect("body_entered", get_parent(), "nest_hit", [self])
	spawner.start()
	
func on_spawn():
	var number = 0
	if get_parent().drones.size() < get_parent().Max_Drones - 4:
		number = floor(rand_range(0, 4))
	for i in range(number):
		var drone = drone_res.instance()
		var trail = trail_res.instance()
		drone.position = Vector2(rand_range(position.x-spawn_range, position.x+spawn_range), 
		rand_range(position.y-spawn_range, position.y+spawn_range))
		drone.home = get_parent()
		if !player == null:
			drone.player = player
		else:
			drone.player = self
		drone.trail = trail
		drone.level = level
		trail.target = drone
		trail.position = drone.position
		get_parent().add_child(trail)
		get_parent().add_child(drone)
		get_parent().drones.append(drone)
	spawner.wait_time = rand_range(4,10)
	spawner.start()


func explode():
	var boom = multi_splode_res.instance()
	boom.position = position
	boom.scale *= 1.5
	get_parent().FX_LAYER.add_child(boom)
	get_node("dead_timer").start()

func _on_dead_timer_timeout():
	get_parent().nests -= 1
	queue_free()
