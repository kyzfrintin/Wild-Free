extends RigidBody2D

onready var player = get_parent().player
onready var tween = get_node("motion")
onready var timer = get_node("retarget")
var home

var distance = 0.0
var speed = 20
var strength = 0
var HP = 100

func _ready():
	strength = rand_range(0.5,2.8)
	HP = HP*strength
	scale = scale*strength
	timer.start()
	connect("body_entered", home, "drone_hit", [self])
		
func retarget():
	distance = position.distance_to(player.pos)
	if distance > 5:
		tween.interpolate_property(self, 'position', position, player.pos, (distance/100)/speed, Tween.TRANS_LINEAR, Tween.EASE_IN)
		tween.start()
	else:
		tween.stop(self, 'position')
	timer.start()

func damage(amnt):
	HP -= amnt

func die():
	queue_free()