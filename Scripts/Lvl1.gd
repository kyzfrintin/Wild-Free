extends Node2D

onready var player = get_node("player")
onready var HPbar = get_node("UI/ProgressBar")

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
	HPbar.value = player.HP
	
func _ready():
	pass
	

func _input(event):
	if !event.is_echo() and Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()