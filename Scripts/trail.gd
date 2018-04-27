extends Line2D

var target
var point
export var trail_length = 0
var start_pos = Vector2()

func _ready():
	pass

func _process(delta):
	global_position = Vector2(0,0)
	global_rotation = 0
	point = target.global_position
	add_point(point)
	while get_point_count() > trail_length:
		remove_point(0)