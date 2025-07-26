extends Button

var isActive = false
var timer: Timer

func _ready() -> void:
	timer = $FTimer

func activate_flamethrower():
	isActive = true
	timer.start()

func timeout():
	isActive = false
	
