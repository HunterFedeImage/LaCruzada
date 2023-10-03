extends Node2D

class_name PauseControl

signal toogle_game_paused(is_paused: bool)

func pause():
	get_tree().paused = true
	$"../PauseMemu".show()


func _on_pause_pressed():
	get_tree().paused = true
	$"../PauseMenu".show()
	pass # Replace with function body.
	
func unpause():
	get_tree().paused = false
	$"../PauseMenu".hide()
	pass # Replace with function body.
