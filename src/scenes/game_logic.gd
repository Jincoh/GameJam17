extends Node

#all in seconds
const MAX_TIME = 50
const SAFE_TIME = 10
const BUFFER_TIME = 1

var tsound: AudioStreamPlayer2D
var msound: AudioStreamPlayer2D
var fsound: AudioStreamPlayer2D
var soundArray: = []
var ssoundArray: = []
var dangerdict = {}
var tweapon = ""
var mweapon = ""
var fweapon = "" 

var time_passed = 0.0
var ts = 0
var sarr = ["safe", "danger", "safe","safe","safe","safe","safe"]
var tarr = []
var arr_index: int = 0
var gsound: AudioStreamPlayer2D


func _ready() -> void:
	tsound = get_node("../FootSteps")
	msound = get_node("../GrizzlySound")
	fsound = get_node("../BigWings")
	
	soundArray.push_back(tsound)
	soundArray.push_back(msound)
	soundArray.push_back(fsound)

	dangerdict[tsound] = tweapon
	dangerdict[msound] = mweapon
	dangerdict[fsound] = fweapon

	ssoundArray.push_back(get_node("../CricketSound"))

	sarr.shuffle()
	fill_time_array()

func _process(delta: float) -> void:

	if time_passed <= MAX_TIME:
		time_passed += delta
		ts = convert_to_string(time_passed)
	else:
		var scene: String =  "res://scenes/NightEnd.tscn"
		get_tree().change_scene_to_file(scene)

	if arr_index < 7 and int(time_passed) == tarr[arr_index]:
		print(sarr[arr_index])
		if sarr[arr_index] == "danger":
			print("danger sound play")
			play_random_danger_sound()
		elif sarr[arr_index] == "safe":
			print("safe sound play")
			play_random_safe_sound()

		arr_index += 1
		print(time_passed)


func convert_to_string(time) -> String:
	var minutes = time/60
	var seconds = fmod(time, 60)
	var milliseconds = fmod(time,1) * 100

	var time_str = "%02d:%02d:%02d" % [minutes, seconds, milliseconds]
	return time_str


func fill_time_array():
	var valid_times = range(SAFE_TIME, MAX_TIME, BUFFER_TIME)
	valid_times.shuffle()
	for i in range(len(sarr)):
		tarr.push_back(valid_times.pop_back())
	tarr.sort()
	print(tarr)


func play_random_danger_sound():
	var randSound: AudioStreamPlayer2D = soundArray.pick_random()
	print(randSound)
	randSound.play()

func play_random_safe_sound():
	var randSound: AudioStreamPlayer2D = ssoundArray.pick_random()
	print(randSound)
	randSound.play()
