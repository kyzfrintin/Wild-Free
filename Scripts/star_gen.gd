extends Node2D

onready var star_res = load("res://Scenes/star.tscn")
export var number = 1

func _ready():
	for i in range(number):
		var star = star_res.instance()
		star.position = Vector2(rand_range(-1920*8, 1920*8), rand_range(-1080*8, 1080*8))
		add_child(star)