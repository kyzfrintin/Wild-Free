extends KinematicBody2D

var speed = 5000.0
var targetx
var targety
var damage

func _ready():
	rotation = get_angle_to(Vector2(targetx, targety))
	get_node("Timer").start()
	pass
	
func _physics_process(delta):
	move_and_slide(Vector2(speed, 0).rotated(rotation), Vector2(0,0), 5, 1, 45)
	modulate.a+= 0.1

func _on_Timer_timeout():
	queue_free()
