extends Area2D

var player
onready var app_tween = get_node("approach_tween")
onready var att_tween = get_node("attack_tween")
onready var timer = get_node("attack_timer")
onready var sprite = get_node("Sprite")
onready var att_ray = get_node("attack_vec")
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
		strength = rand_range(0.8,CustCarrier.drones/7)
		HP = HP*strength
		scale = scale*strength
		damage = 50*strength
		trail.width = floor(20*strength)
		connect("body_entered", home, "drone_hit", [self])
		approach()

func approach():
	if !level.player_dead:
		var app_range = 800
		var app_vec = Vector2(player.global_position.x+rand_range(-app_range,app_range), player.global_position.y+rand_range(-app_range,app_range))
		app_vec += player.vel
		look_at(app_vec)
		app_tween.interpolate_property(self, 'position', position, app_vec, 3/strength, Tween.TRANS_EXPO, Tween.EASE_OUT)
		app_tween.start()
	
func attack():
	if !level.player_dead:
		att_snd.play()
		look_at(player.global_position)
		var att_vec = att_ray.cast_to.rotated(rotation)
		att_tween.interpolate_property(self, 'position', position, att_vec, 0.95/strength, Tween.TRANS_EXPO, Tween.EASE_IN)
		att_tween.start()
		pass

func damage(amnt):
	HP -= amnt

func _on_end_approach(object, key):
	if !level.player_dead:
		distance = position.distance_to(player.global_position)
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
