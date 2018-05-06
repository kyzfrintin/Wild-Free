extends Label

var increment = 100

func _process(delta):
	increment = increment*0.90
	rect_position.y -= increment
	
	modulate.a -= 0.02
	
	if modulate.a < 0:
		queue_free()
