extends KinematicBody2D

const speed = 25000
var targetx
var targety
var damage = 50

func _ready():
	rotation = get_angle_to(Vector2(targetx, targety))
	get_node("Timer").start()
	pass
	
func _process(delta):
	move_and_slide(Vector2(speed, 0).rotated(rotation))

func _on_Timer_timeout():
	queue_free()
