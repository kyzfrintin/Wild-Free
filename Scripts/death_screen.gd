extends Container

onready var text = get_node("text")
onready var button = get_node("Button")

func _ready():
	margin_right = get_viewport_rect().size.x
	margin_bottom = get_viewport_rect().size.y
	rect_position.x -= get_viewport_rect().size.x/2
	rect_position.y -= get_viewport_rect().size.y/2
	
func _on_Button_pressed():
	get_tree().reload_current_scene()
