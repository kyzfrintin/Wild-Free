extends Area2D

var gold 

func _ready():
	var decider = floor(rand_range(0,1))
	if decider >= 0.8:
		gold = true
	elif decider < 0.8:
		gold = false
	connect("body_entered", get_parent(), "pickup", [self])
	if gold:
		get_node("gold").show()
	else:
		get_node("silver").show()
	
