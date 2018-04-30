extends Container

onready var timer = get_node("Timer")
onready var title = get_node("LEM")
onready var subtitle = get_node("subtitle")
onready var boom = get_node("boom")
onready var menu = load("res://Scenes/main_menu.tscn")
var stage = 1

func _ready():
	margin_right = get_viewport_rect().size.x
	margin_bottom = get_viewport_rect().size.y
	timer.start()
	
func scottify(estimate):
	estimate *= 4
	return estimate
	
func _process(delta):
	if Input.is_action_just_pressed("gp_boost"):
		get_tree().change_scene_to(menu)

func _on_Timer_timeout():
	boom.play()
	if stage == 1:
		title.text = "L."
		subtitle.text = "LUDO "
		timer.start()
	if stage == 2:
		title.text = "L.E."
		subtitle.text = "LUDO EX "
		timer.start()
	if stage == 3:
		title.text = "L.E.M."
		subtitle.text = "LUDO EX MACHINA"
	stage += 1


func _on_up_finished():
	get_tree().change_scene_to(menu)
