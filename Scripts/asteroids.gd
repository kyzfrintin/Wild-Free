extends Node2D

onready var factory = preload("res://Scenes/ast_factory.tscn").instance()
export var number = 0

func _ready():
	for i in range(number):
		var num = floor(rand_range(0,7))
		var ast = factory.create_asteroid(num)
		ast.position = Vector2(rand_range(-1920*8, 1920*8), rand_range(-1080*8, 1080*8))
		ast.rotation = rand_range(0,360)
		add_child(ast)