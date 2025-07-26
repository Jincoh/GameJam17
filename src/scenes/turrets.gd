extends Button

var isActive = false
var timer: Timer

func _ready() -> void:
	timer = $TTimer

func activate_turret():
	isActive = true
	timer.start()

func timeout():
	isActive = false
	

