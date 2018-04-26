extends Area2D

var gold 

func _ready():
	var decider = floor(rand_range(1,2.9))
	if decider == 1:
		gold = true
	elif decider == 2:
		gold = false
	connect("body_entered", get_parent(), "pickup", [self])
	if gold:
		get_node("gold").show()
	else:
		get_node("silver").show()
	
