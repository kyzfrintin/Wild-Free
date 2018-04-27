extends KinematicBody2D

export var thrust = 300
export var max_spd = 6
export var turn_spd = 2.6

onready var emitters = [get_node("smoke"), get_node("fire")]
onready var view_size = get_viewport_rect().size
onready var tween = get_node("Tween")
onready var cam = get_node("Camera2D")
onready var cast = get_node("RayCast2D")
onready var bullet_res = load("res://Scenes/p_laser.tscn")
onready var boostemit = get_node("boost")
onready var thrust_start = get_node("sounds/thrust_off")
onready var thrust_loop = get_node("sounds/move_loop")
onready var thrust_rumble = get_node("sounds/thrust_rumble")
onready var boost_sound = get_node("sounds/boost")
onready var laser_sound = get_node("sounds/laser")
onready var scrape_sound = get_node("sounds/ship_scrape")
onready var hit_sound = get_node("sounds/ship_hit")

const MAX_HP = 100

var shake = 0
var vel = Vector2()
var rot = 0
var pos = Vector2()
var acc = Vector2()
var canfire = true
var laser = false
var HP = 100
var las_dam = 25

func _process(delta):

	if Input.is_action_pressed("gp_turn_left"):
		rot -= turn_spd * delta
		
	if Input.is_action_pressed("gp_turn_right"):
		rot += turn_spd * delta
	
		
	if Input.is_action_pressed("gp_forwards"):
		acc = Vector2(thrust, 0).rotated(rot)
		for i in emitters:
			i.emitting = true
	else:
		acc = Vector2(0,0)
		for i in emitters:
			i.emitting = false
	
	if Input.is_action_just_pressed("gp_boost"):
		tween.interpolate_property(self, 'vel', vel, cast.cast_to.rotated(rot)*5, 1.6, Tween.TRANS_BACK, Tween.EASE_OUT)
		tween.start()
		boost_sound.play()
		boostemit.emitting = true
		shake = 10
	
	if Input.is_action_just_pressed("gp_forwards"):
		if !thrust_start.playing:
			thrust_start.play()
		if !thrust_loop.playing:
			thrust_loop.play()
		if !thrust_rumble.playing:
			thrust_rumble.play()
		pass
	
	if Input.is_action_just_released("gp_forwards"):
		if thrust_start.playing:
			thrust_start.stop()
		if thrust_loop.playing:
			thrust_loop.stop()
		
	if Input.is_mouse_button_pressed(1) && canfire:
		var laser = bullet_res.instance()
		laser.position = position
		laser.damage = las_dam*(rand_range(0.5,2.5))
		laser.targetx = get_global_mouse_position().x
		laser.targety = get_global_mouse_position().y
		get_parent().get_node("bullets").add_child(laser,true)
		canfire = false
		get_node("Timer").start()
		laser_sound.play()
		shake = 5
		
	if Input.is_action_pressed("gp_pad_fire") && canfire:
		var laser = bullet_res.instance()
		laser.position = position
		laser.damage = las_dam*(rand_range(0.5,2.5))
		laser.targetx = (position.x + (Input.get_joy_axis(0, 2))*4)
		laser.targety = (position.y + (Input.get_joy_axis(0, 3))*4)
		get_parent().get_node("bullets").add_child(laser)
		canfire = false
		get_node("Timer").start()
		laser_sound.play()
		shake = 5
		
	if HP < 0:
		die()
		
	if shake > 0:
		cam_shake(30)
	else:
		cam.offset = Vector2(0,0)
	
	
	rotation = rot
	vel += acc * delta
	pos += vel * delta
	position = pos
	
func cam_shake(intensity):
	cam.offset = Vector2(rand_range(-intensity, intensity), rand_range(-intensity, intensity))
	shake -= 1
	
func hurt(amnt):
	HP -= amnt
	shake = 30
	hit_sound.play()
	scrape_sound.play()

func fire_cooldown():
	canfire = true
	
func die():
	get_tree().reload_current_scene()

