extends Sprite

onready var ast_res = load("res://Scenes/SmallAst.tscn")

var max_small = 20
var scaler = 0.0

func _ready():
	scaler = rand_range(0.5, 3.0)
	scale = Vector2(scaler, scaler)
	var num = floor(rand_range(0, max_small))
	
	for i in range(num):
		var ast = ast_res.instance()
		ast.position.x = rand_range(-1000, 1000)
		ast.position.y = rand_range(-1000, 1000)
		ast.rotation = rand_range(0,360)
		add_child(ast)


