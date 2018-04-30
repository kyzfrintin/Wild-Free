extends Container

onready var level_one = preload("res://Scenes/LevelOne.tscn")
onready var TITLE = get_node("TITLE")
onready var scaler = get_node("TITLE/scaler")
onready var play_but = get_node("TITLE/hover/play_but/Label")
onready var exit_but = get_node("TITLE/hover2/exit_but/Label")
onready var highlight = get_node("TITLE/Camera2D/highlight")
var index = 0

func _ready():
	CustCarrier.score = 0
	margin_right = get_viewport_rect().size.x
	margin_bottom = get_viewport_rect().size.y
	if !MusicPlayer.playing:
		MusicPlayer._start_muted()
	MusicPlayer._unMute(0)
	MusicPlayer._unMute(1)
	
func _process(delta):
	get_node("TITLE").rect_position += Vector2(12,4)
	index = floor(clamp(index,0,2))
	if !scaler.active:
		get_node("TITLE/but_highlight").visible = true
		get_node("TITLE/nest_highlight").visible = false
		get_node("TITLE/drone_highlight").visible = false
		if Input.is_action_just_pressed("ui_down"):
			index += 1
			
		if Input.is_action_just_pressed("ui_up"):
			index -= 1
			
		if Input.is_action_pressed("ui_accept"):
			if index == 1:
				CustCarrier.nests = scaler.nest_count
				CustCarrier.drones = scaler.drone_count
				get_tree().change_scene_to(level_one)
			if index == 2:
				get_tree().quit()
				
	if Input.is_action_just_pressed("ui_focus_next"):
		index = 0
		scaler.active = true
		
	if Input.is_action_just_pressed("ui_focus_prev"):
		index = 1
		scaler.active = false
		
	if scaler.active:
		get_node("TITLE/but_highlight").visible = false
		if scaler.index == 1:
			get_node("TITLE/nest_highlight").visible = true
			get_node("TITLE/drone_highlight").visible = false
		elif scaler.index == 2:
			get_node("TITLE/drone_highlight").visible = true
			get_node("TITLE/nest_highlight").visible = false
	
	if index == 1:
		play_but.modulate.b = 0
	else:
		play_but.modulate.b = 255
		
	if index == 2:
		exit_but.modulate.b = 0
	else:
		exit_but.modulate.b = 255

func play_entered():
	index = 1

func exit_entered():
	index = 2

func play_leave():
	index = 0

func exit_leave():
	index = 0