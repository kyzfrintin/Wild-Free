extends Container

onready var text = get_node("text")
onready var menu = preload("res://Scenes/main_menu.tscn")
onready var level = get_parent()
onready var retry_text = get_node("text/hover/retry_but")
onready var menu_text = get_node("text/hover2/menu_but")
onready var boop = get_node("sounds/click")
onready var switch_snd = get_node("sounds/switch")
onready var select = get_node("sounds/select")

var index = 0

func _ready():
	margin_right = get_viewport_rect().size.x
	margin_bottom = get_viewport_rect().size.y
	rect_position = level.death_pos
	
func _process(delta):
	index = clamp(index,0,2)

	if Input.is_action_just_pressed("ui_down"):
		boop.play()
		index += 1
	if Input.is_action_just_pressed("ui_up"):
		boop.play()
		index -= 1
	if Input.is_action_just_pressed("ui_accept"):
		if index != 0:
			select.play()
		
	
	if index == 1:
		retry_text.modulate.b = 0
	else:
		retry_text.modulate.b = 255
		
	if index == 2:
		menu_text.modulate.b = 0
	else:
		menu_text.modulate.b = 255

func retry_enter():
	boop.play()
	index = 1

func menu_but_mouse_entered():
	boop.play()
	index = 2
	
func _on_hover_mouse_exited():
	index = 0

func _on_hover2_mouse_exited():
	index = 0


func _on_select_finished():
	if index == 1:
		get_tree().reload_current_scene()
	if index == 2:
		get_tree().change_scene_to(menu)
