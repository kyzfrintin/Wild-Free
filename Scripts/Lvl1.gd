extends Node2D

onready var res_pool = get_node("ResourcePreloader")
onready var explosion = res_pool.get_resource("multi_splode")
onready var death_screen = res_pool.get_resource("you_died")
onready var level_clear = res_pool.get_resource("level_clear")
onready var player = get_node("player")
onready var FX_LAYER = get_node("FX")
onready var HPbar = get_node("UI/Panel/ProgressBar")
onready var music_a = MusicPlayer
onready var drone_nests = get_node("drone_nests")
onready var nest_num = get_node("UI/Panel/Label")
onready var drone_num = get_node("UI/Panel/Label2")
onready var score_bar = get_node("UI/Label3")
var player_dead = false
var intensity = 0.0
var arr = 0
var score

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
	if Input.is_action_just_pressed("ui_down") and !player_dead:
		player.hurt(40)
	if !player_dead:
		HPbar.value = player.HP
	nest_num.text = str("NESTS: " + str(drone_nests.nests))
	drone_num.text = str("DRONES: " + str(drone_nests.drones.size()))
	intensity = (float(drone_nests.drones.size())/drone_nests.Max_Drones)*4
	intensity = floor(intensity)+1
	score_bar.text = str("SCORE: " + str(floor(score)))
	play_arrangement(intensity)

func player_died():
	player_dead = true
	for i in drone_nests.drones:
		i.idle = true
	player.queue_free()
	get_node("dead_timer").start()


func _ready():
	score = CustCarrier.score
	if !music_a.playing:
		music_a._start_muted()
	
func on_clear():
	player.cam.current = false
	player.tween.interpolate_property(player, 'vel', player.vel, player.cast.cast_to.rotated(player.rot)*8, 0.5, Tween.TRANS_BACK, Tween.EASE_OUT)
	player.tween.start()
	player.boostemit.emitting = true
	player.boost_sound.play()
	player_dead = true
	get_node("clear_timer").start()
	
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

func _on_clear_timer_timeout():
	var clear = level_clear.instance()
	player.queue_free()
	add_child(clear)

func _on_dead_timer_timeout():
	var you_died = death_screen.instance()
	add_child(you_died)
