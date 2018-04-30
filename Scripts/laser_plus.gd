extends Area2D

var tier = ""

func _ready():
	var decider = rand_range(0,1)
	if decider >= 0.7:
		tier = "gold"
	elif decider < 0.7 and decider >= 0.4:
		tier = "silver"
	elif decider < 0.4:
		tier = "bronze"
	connect("body_entered", get_parent(), "las_pickup", [self])
	
	get_node(tier).show()
	
