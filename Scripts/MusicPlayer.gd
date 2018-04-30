extends Node2D

export(AudioStreamSample) var layer1
export(AudioStreamSample) var layer2
export(AudioStreamSample) var layer3
export(AudioStreamSample) var layer4
export(AudioStreamSample) var layer5
export(AudioStreamSample) var layer6
export(AudioStreamSample) var layer7
export(AudioStreamSample) var layer8
export(AudioStreamSample) var layer9
export(AudioStreamSample) var layer10
export(AudioStreamSample) var layer11
export(AudioStreamSample) var layer12

export var tempo = 0
export var bars = 0
export var trans_time = 0.0

onready var tweens = [get_node("Tween"), get_node("Tween2"), get_node("Tween3"), get_node("Tween4"),
get_node("Tween5"), get_node("Tween6"), get_node("Tween7"), get_node("Tween8"), get_node("Tween9"),
get_node("Tween10"),get_node("Tween11"), get_node("Tween12")] 

onready var layers = [layer1, layer2, layer3, layer4, layer5, layer6, layer7, layer8, layer9, layer10, layer11, layer12]
onready var audioplayer = preload("res://Scenes/Layer.tscn")

var players = []
var num = 0
var time = 0.0
var beat = 0.0
var bar = 0
var beats_in_sec = 0.0
var on_beat = true
var playing = false

signal beat
signal bar


func _ready():
	beats_in_sec = 60000.0/tempo
		
	for i in layers:
		var player = audioplayer.instance()
		var bus = AudioServer.get_bus_count()
		player.set_stream(layers[num])
		players.append(player)
		AudioServer.add_bus(bus)
		AudioServer.set_bus_name(bus,"layer" + str(num))
		AudioServer.set_bus_send(bus, "Music")
		player.set_bus("layer" + str(num))
		num += 1
		add_child(player)
		
func _process(delta):
	
	time = players[0].get_playback_position()
	beat = (time/beats_in_sec)*1000.0
	
	if (fmod(beat, 1.0) > 0.95) or (fmod(beat, 1.0) < 0.05):
		if !on_beat:
			on_beat = true
			emit_signal("beat")
	else:
		on_beat = false
		
	beat = floor(beat)
	bar = floor(beat/4) + 1

func _startAlone(layer):
	for i in players:
		i.set_volume_db(-60.0)
	players[layer].set_volume_db(0)
	_play()
	
func _muteAboveLayer(layer):
	for i in range(layer):
        _fadeIn(i)
	for i in range(layer + 1, layers.size()):
        _fadeOut(i)

func _play():
	if !playing:
		playing = true
		for i in players:
			i.play()
		
func _mute(layer):
	players[layer].set_volume_db(-60.0)
	
func _unMute(layer):
	players[layer].set_volume_db(0.0)
		
func _fadeIn(layer):
	var target = players[layer]
	var in_from = target.get_volume_db()
	tweens[layer].interpolate_property(target, 'volume_db', in_from, 0.0, trans_time, Tween.TRANS_QUAD, Tween.EASE_OUT)
	tweens[layer].start()
	
func _fadeOut(layer):
	var target = players[layer]
	var in_from = target.get_volume_db()
	tweens[layer].interpolate_property(target, 'volume_db', in_from, -60.0, trans_time*1.5, Tween.TRANS_SINE, Tween.EASE_IN)
	tweens[layer].start()
	
func _stop():
	if playing:
		playing = false
		for i in players:
			i.stop()
