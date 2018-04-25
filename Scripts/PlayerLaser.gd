extends KinematicBody2D

const speed = 1000
var dir = Vector2()
var damage = 50

var ship_vector setget set_ship_vector
func set_ship_vector(vec):
	pass

func _ready():
#	rotation = get_angle_to(Vector2(targetx, targety))
	get_node("Timer").start()
	pass
	
func _process(delta):
	position += Vector2()
#	move_and_slide(Vector2(speed, 0).rotated(rotation))
	pass

func _on_Timer_timeout():
	queue_free()
