extends Node2D

func _ready():
	get_node("smoke").emitting = true
	get_node("fire").emitting = true
	get_node("Timer").start()
	get_node("boom").play()

func _process(delta):
	get_node("flash").modulate.a -= 0.001

func _on_Timer_timeout():
	queue_free()
