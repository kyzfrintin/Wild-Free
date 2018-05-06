extends Container

onready var nest_counter = get_node("nest_panel/title")
onready var nest_slider = get_node("nest_panel/HSlider")
onready var drone_counter = get_node("drone_panel/title")
onready var drone_slider = get_node("drone_panel/HSlider")

var nest_count = 20
var drone_count = 100
var active = false
var index = 1

func _ready():
	margin_right = get_viewport_rect().size.x
	margin_bottom = get_viewport_rect().size.y

func _process(delta):
	nest_count = nest_slider.value
	nest_counter.text = str("MAX NESTS: " + str(nest_count))
	
	drone_count = drone_slider.value
	drone_counter.text = str("MAX DRONES: " + str(drone_count))
	
	if Input.is_action_pressed("ui_right") and active:
		if index == 1:
			nest_slider.value += 1
		if index == 2:
			drone_slider.value += 1
			
	if Input.is_action_pressed("ui_left") and active:
		if index == 1:
			nest_slider.value -= 1
		if index == 2:
			drone_slider.value -= 1
			
	if Input.is_action_just_pressed("ui_down"):
		index = 2
	if Input.is_action_just_pressed("ui_up"):
		index = 1