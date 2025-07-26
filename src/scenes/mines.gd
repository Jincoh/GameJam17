extends Button

var isActive = false
var timer: Timer

func _ready() -> void:
	timer = $MTimer

func activate_mines():
	isActive = true
	timer.start()

func timeout():
	isActive = false
	


