extends Node2D

onready var player = get_node("player")
onready var HPbar = get_node("UI/ProgressBar")
onready var music_a = get_node("music_loop_a")
onready var drone_nests = get_node("drone_nests")
var intensity = 0.0
var arr = 0

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
	HPbar.value = player.HP
	intensity = (float(drone_nests.drones)/drone_nests.Max_Drones)*4
	intensity = floor(intensity)+1
	play_arrangement(intensity)
	print(intensity)
	if Input.is_action_just_pressed("ui_screenshot"):
		get_viewport().set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)
		# Let two frames pass to make sure the screen was captured
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")
	
		# Retrieve the captured image
		var img = get_viewport().get_texture().get_data()
	  
		# Flip it on the y-axis (because it's flipped)
		img.flip_y()
	
		# Create a texture for it
		var tex = ImageTexture.new()
		tex.create_from_image(img)
	
		# Set it to the capture node
		get_node("capture").set_texture(tex)
		
		var data = get_viewport().get_texture().get_data()
		data.flip_y()
		data.save_png('screenshot.png')
	
func _ready():
	music_a._start_muted()
	
	pass
	
func play_arrangement(num):
	if num == 1 && arr != 1:
		arr = 1
		##--FADE-INS--##
		music_a._fadeIn(0)
		music_a._fadeIn(1)
		##--FADE-OUTS--##
		music_a._fadeOut(2)
		music_a._fadeOut(3)
		music_a._fadeOut(4)
		music_a._fadeOut(5)
		music_a._fadeOut(6)
		music_a._fadeOut(7)
		music_a._fadeOut(8)
		music_a._fadeOut(9)
		music_a._fadeOut(10)
		music_a._fadeOut(11)
	if num == 2 && arr != 2:
		arr = 2
		##--FADE-INS--##
		music_a._fadeIn(0)
		music_a._fadeIn(1)
		music_a._fadeIn(2)
		music_a._fadeIn(3)
		music_a._fadeIn(4)
		##--FADE-OUTS--##
		music_a._fadeOut(5)
		music_a._fadeOut(6)
		music_a._fadeOut(7)
		music_a._fadeOut(8)
		music_a._fadeOut(9)
		music_a._fadeOut(10)
		music_a._fadeOut(11)
	if num == 3 && arr != 3:
		arr = 3
		##--FADE-INS--##
		music_a._fadeIn(0)
		music_a._fadeIn(1)
		music_a._fadeIn(2)
		music_a._fadeIn(3)
		music_a._fadeIn(4)
		music_a._fadeIn(5)
		music_a._fadeIn(6)
		music_a._fadeIn(7)
		music_a._fadeIn(8)
		##--FADE-OUTS--##		
		music_a._fadeOut(9)
		music_a._fadeOut(10)
		music_a._fadeOut(11)
	if num == 4 && arr != 4:
		arr = 4
		##--FADE-INS--##
		music_a._fadeIn(0)
		music_a._fadeIn(1)
		music_a._fadeIn(2)
		music_a._fadeIn(3)
		music_a._fadeIn(4)
		music_a._fadeIn(5)
		music_a._fadeIn(6)
		music_a._fadeIn(7)
		music_a._fadeIn(8)
		music_a._fadeIn(9)
		music_a._fadeIn(10)
		music_a._fadeIn(11)
		##--FADE-OUTS--##
	
