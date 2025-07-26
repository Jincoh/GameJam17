extends Control
# a useless comment

var mUses = 1
var tUses = 1
var fUses = 1

var turret
var mines
var flameThrower

func _ready() -> void:
	turret = $Turrets
	mines = $Mines
	flameThrower = $FlameThrower
 
func _on_menu_pressed() -> void:
	get_tree().paused = true
	$Control.show()

func _on_mines_pressed() -> void:
	if mUses >= 1:
		mines.activate_mines()
		mUses -=1
	
func _on_turrets_pressed() -> void:
	if tUses >= 1:
		turret.activate_turret()
		tUses -=1

func _on_flame_thrower_pressed() -> void:
	if fUses >= 1:
		flameThrower.activate_flamethrower()
		fUses -=1
