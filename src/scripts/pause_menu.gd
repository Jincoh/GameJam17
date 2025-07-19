extends Control


func _on_button_pressed() -> void:
	hide()
	get_tree().paused = false

func _on_quit_pressed() -> void:
	get_tree().quit()

