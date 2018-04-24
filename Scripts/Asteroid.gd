extends Sprite

onready var ast_res = preload("res://Scenes/SmallAst.tscn")

export var max_small = 0

var scaler = 0.0

func _ready():
	scaler = rand_range(0.5, 3.0)
	scale = Vector2(scaler, scaler)
	var num = floor(rand_range(0, max_small))
	
	for i in range(num):
		var ast = ast_res.instance()
		ast.position.x = rand_range(-500, 500)
		ast.position.y = rand_range(-500, 500)
		ast.rotation = rand_range(0,360)
		add_child(ast)


