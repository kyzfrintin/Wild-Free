extends RigidBody2D

var player
onready var app_tween = get_node("approach_tween")
onready var att_tween = get_node("attack_tween")
onready var timer = get_node("attack_timer")
onready var att_ray = get_node("attack_vec")
onready var att_snd = get_node("drone_attack")
var home

var distance = 0.0
var speed = 15
var strength = 0
var HP = 100
var damage = 0

func _process(delta):
	pass

func _ready():
	strength = rand_range(0.5,2.8)
	HP = HP*strength
	scale = scale*strength
	damage = 50*strength
	#timer.start()
	connect("body_entered", home, "drone_hit", [self])
	approach()
			
#func retarget():
#
#	if distance > 1:
#		tween.interpolate_property(self, 'position', position, player.pos, (distance/100)/speed, Tween.TRANS_LINEAR, Tween.EASE_IN)
#		tween.start()
#	else:
#		tween.stop(self, 'position')
#	timer.start()

func approach():
	var app_range = 1200
	var app_vec = Vector2(player.pos.x+rand_range(-app_range,app_range), player.pos.y+rand_range(-app_range,app_range))
	look_at(app_vec)
	app_tween.interpolate_property(self, 'position', position, app_vec, 2/strength, Tween.TRANS_EXPO, Tween.EASE_OUT)
	app_tween.start()
	
	
	
func attack():
	look_at(player.pos)
	var att_vec = att_ray.cast_to.rotated(rotation)
	att_tween.interpolate_property(self, 'position', position, att_vec, 0.5/strength, Tween.TRANS_EXPO, Tween.EASE_IN)
	att_tween.start()
	pass

func damage(amnt):
	HP -= amnt

func _on_end_approach(object, key):
	distance = position.distance_to(player.pos)
	if distance > 1900:
		approach()
	else:
		look_at(player.pos)
		timer.wait_time = 2/strength
		timer.start()

func _on_attack_timer_timeout():
	attack()
	
func die():
	queue_free()


func _on_attack_finish(object, key):
	approach()
