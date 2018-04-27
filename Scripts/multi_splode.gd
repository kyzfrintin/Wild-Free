extends Node2D

onready var explosion = load("res://Scenes/explosion.tscn")
onready var countdown = get_node("countdown")
onready var dead_time = get_node("dead_time")
var num = 0
var target

func _ready():
	num = floor(rand_range(3,6))
	countdown.wait_time = rand_range(0.2,0.8)
	countdown.start()

func _on_countdown_timeout():
	if num > 0:
		var splode = explosion.instance()
		splode.position.x = rand_range(-200, 200)
		splode.position.y = rand_range(-200, 200)
		splode.scale = scale*rand_range(1,3.5)
		add_child(splode)
		num -= 1
		countdown.wait_time = rand_range(0.2,0.8)
		countdown.start()
	else:
		dead_time.start()
		
func _on_dead_time_timeout():
	queue_free()
	
