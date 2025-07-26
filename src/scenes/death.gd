extends Control


func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_continue_pressed() -> void:
	Globals.score = 0
	get_tree().change_scene_to_file("res://scenes/MainGameScene.tscn")
