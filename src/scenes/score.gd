extends Label

func _process(_delta: float) -> void:
	text = "Score: %s" % Globals.score
