extends Node

var time_passed = 0.0
var ts = 0

func _process(delta: float) -> void:
	if time_passed <= 10:
		time_passed += delta
		ts = convert_to_string(time_passed)


func convert_to_string(time) -> String:
	var minutes = time/60
	var seconds = fmod(time, 60)
	var milliseconds = fmod(time,1) * 100

	var time_str = "%02d:%02d:%02d" % [minutes, seconds, milliseconds]
	return time_str
