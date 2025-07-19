extends Control
# a useless comment

var mUses = 1
var tUses = 1
var fUses = 1
 
func _on_menu_pressed() -> void:
	get_tree().paused = true
	$Control.show()

func _on_mines_pressed() -> void:
	if mUses >= 1:
		#add the weapon function
		mUses -=1
	else:
		pass		
	
func _on_turrets_pressed() -> void:
	if tUses >= 1:
		#add the weapon function
		tUses -=1
	else:
		pass

func _on_flame_thrower_pressed() -> void:
	if fUses >= 1:
		#add the weapon function
		fUses -=1
	else:
		pass
