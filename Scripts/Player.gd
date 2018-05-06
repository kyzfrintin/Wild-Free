extends KinematicBody2D

export var thrust = 300
export var max_spd = 6
export var turn_spd = 2.6

onready var emitters = [get_node("smoke"), get_node("fire")]
onready var view_size = get_viewport_rect().size
onready var tween = get_node("Tween")
onready var cam = get_node("Camera2D")
onready var cast = get_node("RayCast2D")
onready var res_pool = get_parent().get_node("ResourcePreloader")
onready var bullet_res = load("res://Scenes/p_laser.tscn")
onready var boostemit = get_node("boost")
onready var thrust_start = get_node("sounds/thrust_off")
onready var thrust_loop = get_node("sounds/move_loop")
onready var thrust_rumble = get_node("sounds/thrust_rumble")
onready var boost_sound = get_node("sounds/boost")
onready var laser_sound = get_node("sounds/laser")
onready var scrape_sound = get_node("sounds/ship_scrape")
onready var hit_sound = get_node("sounds/ship_hit")
onready var level = get_parent()
onready var FX_LAYER = get_parent().get_node("FX")
onready var explosion = res_pool.get_resource("multi_splode")

var shake = 0
var vel = Vector2()
var rot = 0
var pos = Vector2()
var acc = Vector2()
var canfire = true
var HP = 100
var MaxHP = 100
var las_dam = 25
var cannons = 1
var bullets = []
var laser_speed = 4500
var las_mult
var vul = true

signal death

func _ready():
	MaxHP = CustCarrier.MaxHP
	HP = CustCarrier.HP
	las_mult = CustCarrier.las_mult
	connect("death", get_parent(), "player_died")
	

func _process(delta):
	if !level.player_dead:
		if Input.is_action_just_pressed("cheat_god_mode"):
			vul = false
		
		if Input.is_action_pressed("gp_left"):
			rot -= turn_spd * delta
			
		if Input.is_action_pressed("gp_right"):
			rot += turn_spd * delta
		
			
		if Input.is_action_pressed("gp_thrust_rot"):
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
		
		if Input.is_action_just_pressed("gp_thrust_rot"):
			if !thrust_start.playing:
				thrust_start.play()
			if !thrust_loop.playing:
				thrust_loop.play()
			if !thrust_rumble.playing:
				thrust_rumble.play()
			pass
		
		if Input.is_action_just_released("gp_thrust_rot"):
			if thrust_start.playing:
				thrust_start.stop()
			if thrust_loop.playing:
				thrust_loop.stop()
			
		if Input.is_mouse_button_pressed(1) && canfire:
			for i in range(1,cannons):
				var laser = bullet_res.instance()
				laser.damage = (las_dam*las_mult)*(rand_range(0.5*las_mult,2.5*las_mult))
				laser.speed = laser_speed*las_mult
				laser.position = position
				laser.scale *= las_mult
				laser.modulate.a = 0
				if las_mult > 1:
					laser.modulate.g -= las_mult/10
					laser.modulate.r -= las_mult/5
					laser.modulate.b += las_mult/12
				laser.targetx = get_global_mouse_position().x
				laser.targety = get_global_mouse_position().y
				get_parent().get_node("bullets").add_child(laser,true)
				bullets.append(laser)
			if bullets.size() == 2:
				bullets[0].position += Vector2(0, -20)
				bullets[1].position += Vector2(0, 20)
			if bullets.size() == 3:
				bullets[1].position += Vector2(0, -30)
				bullets[2].position += Vector2(0, 30)
			bullets.clear()
			canfire = false
			get_node("Timer").wait_time =  1/(las_mult*7.5)
			get_node("Timer").start()
			laser_sound.play()
			shake = 5
			
		if Input.is_action_pressed("gp_pad_fire") && canfire:
			for i in range (1, cannons):
				var laser = bullet_res.instance()
				laser.position = position
				laser.damage = (las_dam*las_mult)*(rand_range(0.5*las_mult,2.5*las_mult))
				laser.speed = laser_speed*las_mult
				laser.position = position
				laser.scale *= las_mult
				laser.modulate.a = 0
				if las_mult > 1:
					laser.modulate.g -= las_mult/10
					laser.modulate.r -= las_mult/5
					laser.modulate.b += las_mult/12
				laser.targetx = (position.x + (Input.get_joy_axis(0, 2))*4)
				laser.targety = (position.y + (Input.get_joy_axis(0, 3))*4)
				get_parent().get_node("bullets").add_child(laser)
				bullets.append(laser)
			if bullets.size() == 2:
				bullets[0].position += Vector2(0, -20)
				bullets[1].position += Vector2(0, 20)
			if bullets.size() == 3:
				bullets[1].position += Vector2(0, -30)
				bullets[2].position += Vector2(0, 30)
			bullets.clear()
			canfire = false
			get_node("Timer").wait_time =  1/(las_mult*7.5)
			get_node("Timer").start()
			laser_sound.play()
			shake = 5
		
		HP = clamp(HP,-1,MaxHP)
		if HP < 0:
			die()
			HP = 0
			
		if shake > 0:
			cam_shake(10)
		else:
			cam.offset = Vector2(0,0)
		
		
		rotation = rot
		vel += acc * delta
		pos += vel * delta
		position = pos
		if get_node("SpriteFlash").modulate.a > 0:
			get_node("SpriteFlash").modulate.a -= 0.025
	
func cam_shake(intensity):
	cam.offset = Vector2(rand_range(-intensity, intensity), rand_range(-intensity, intensity))
	shake -= 1
	
func hurt(amnt):
	if vul:
		HP -= amnt
		vul = false
		shake = 30
		hit_sound.play()
		get_node("SpriteFlash").modulate.a = 2
		get_node("Spark").emitting = true
		get_node("Timer3").start()
		scrape_sound.play()

func fire_cooldown():
	canfire = true
	
func die():
	level.death_pos = global_position
	var boom = explosion.instance()
	boom.position = global_position
	FX_LAYER.add_child(boom)
	get_node("Timer2").start()

func death_timer():
	emit_signal("death")

func hurt_timer_out():
	vul = true
	get_node("Spark").emitting = false
