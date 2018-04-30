extends Label

onready var tween = get_node("Tween")

var width
var height

func _ready():
	width = get_viewport().size.x
	height = get_viewport().size.y
	text = str("LEVEL" + str(CustCarrier.lvl))
	rect_position = Vector2(-600,height*0.4)
	var dest = Vector2(width,height*0.4)
	tween.interpolate_property(self, 'rect_position', rect_position, dest, 1.6, Tween.TRANS_CUBIC, Tween.EASE_OUT_IN)
	tween.start()
	pass

func _on_Tween_tween_completed(object, key):
	queue_free()
