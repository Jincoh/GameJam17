extends Control


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_start_pressed() -> void:
	var scene: String =  "res://scenes/MainGameScene.tscn"
	get_tree().change_scene_to_file(scene)
