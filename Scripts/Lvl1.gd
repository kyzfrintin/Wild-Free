extends Node2D

onready var res_pool = get_node("ResourcePreloader")
onready var explosion = res_pool.get_resource("multi_splode")
onready var death_screen = res_pool.get_resource("you_died")
onready var level_clear = res_pool.get_resource("level_clear")
onready var player
onready var FX_LAYER = get_node("FX")
onready var HPbar = get_node("UI/Panel/ProgressBar")
onready var music_a = MusicPlayer
onready var drone_nests = get_node("drone_nests")
onready var nest_num = get_node("UI/Panel/Label")
onready var drone_num = get_node("UI/Panel/Label2")
onready var score_bar = get_node("UI/score_panel/score_text")
var player_dead = false
var intensity = 0.0
var arr = 0
var score

func _enter_tree():
	if CustCarrier.cont == "dir":
		player = get_node("ship_dir")
		player.name = "player"
		get_node("ship_rot").queue_free()
	if CustCarrier.cont == "rot":
		player = get_node("ship_rot")
		player.name = "player"
		get_node("ship_dir").queue_free()

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
	if Input.is_action_just_pressed("ui_down") and !player_dead:
		player.hurt(40)
	if !player_dead:
		HPbar.value = player.HP
		get_node("UI/Panel/Label3").text = str(player.las_mult)
	nest_num.text = str("NESTS: " + str(drone_nests.nests))
	drone_num.text = str("DRONES: " + str(drone_nests.drones.size()))
	intensity = (float(drone_nests.drones.size())/drone_nests.Max_Drones)*12
	intensity = floor(intensity)
	score_bar.text = str("SCORE: " + str(floor(score)))
	music_a._muteAboveLayer(intensity)

func player_died():
	player_dead = true
	for i in drone_nests.drones:
		i.idle = true
	player.queue_free()
	get_node("dead_timer").start()


func _ready():
	get_node("UI/best_panel/best_text").text = str("BEST: " + str(highscore.bestscore))
	score = CustCarrier.score
	if !music_a.playing:
		music_a._startAlone(0)
	
func on_clear():
	player.cam.current = false
	player.tween.interpolate_property(player, 'vel', player.vel, player.cast.cast_to.rotated(player.rot)*8, 0.5, Tween.TRANS_BACK, Tween.EASE_OUT)
	player.tween.start()
	player.boostemit.emitting = true
	player.boost_sound.play()
	player_dead = true
	get_node("clear_timer").start()

func _on_clear_timer_timeout():
	var clear = level_clear.instance()
	player.queue_free()
	add_child(clear)

func _on_dead_timer_timeout():
	var you_died = death_screen.instance()
	if score > highscore.bestscore:
		highscore.set_bestscore(score)
	add_child(you_died)
