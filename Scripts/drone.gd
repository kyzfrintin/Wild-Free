extends Area2D

var player
onready var app_tween = get_node("approach_tween")
onready var att_tween = get_node("attack_tween")
onready var timer = get_node("attack_timer")
onready var sprite = get_node("Sprite")
onready var att_snd = get_node("drone_attack")
onready var hit_snd = get_node("drone_hit")
onready var ding_snd = get_node("drone_ding")
onready var hit_timer = get_node("Timer")
onready var hit_part = get_node("hit_part")
var home
var level
var idle = false
var trail
var distance = 0.0
var speed = 15
var strength = 0
var HP = 100
var damage = 0

func _ready():
	if !level.player_dead:
		strength = rand_range(0.8,3+(CustCarrier.lvl/2))
		HP = HP*strength
		scale = scale*strength
		damage = 10*strength
		trail.width = floor(20*strength)
		connect("body_entered", home, "drone_hit", [self])
		get_node("Timer2").start()
		approach()

func approach():
	if !level.player_dead:
		var app_range = 800
		var app_vec = Vector2(player.global_position.x+rand_range(-app_range,app_range), player.global_position.y+rand_range(-app_range,app_range))
		look_at(app_vec)
		app_tween.interpolate_property(self, 'global_position', global_position, app_vec, 3/strength, Tween.TRANS_EXPO, Tween.EASE_OUT)
		app_tween.start()
	
func attack():
	if !level.player_dead:
		att_snd.play()
		look_at(player.position)
		var att_vec = player.position+player.vel
		att_vec += Vector2(rand_range(-500,500),rand_range(-500,500))
		att_tween.interpolate_property(self, 'global_position', global_position, att_vec, 1.7/strength, Tween.TRANS_EXPO, Tween.EASE_OUT)
		att_tween.start()
		pass

func damage(amnt):
	HP -= amnt

func _on_end_approach(object, key):
	if !level.player_dead:
		distance = global_position.distance_to(player.global_position)
		if distance > 1900 :
			approach()
		else:
			look_at(player.global_position)
			timer.wait_time = 2/strength
			timer.start()

func _on_attack_timer_timeout():
	if !level.player_dead:
		attack()
	
func die():
	trail.queue_free()
	queue_free()

func _on_attack_finish(object, key):
	if !level.player_dead:
		approach()

func flash_timer():
	sprite.modulate.r = 1
	sprite.modulate.g = 1
	sprite.modulate.b = 3

func _on_attack_tween_tween_step(object, key, elapsed, value):
	look_at(player.position)


func boop_timeout():
	var chooser = rand_range(0,1)
	if chooser >= 0.5:
		get_node("drone_boop1").play()
	else:
		get_node("drone_boop2").play()
	get_node("Timer2").wait_time = chooser*5
	get_node("Timer2").start()
