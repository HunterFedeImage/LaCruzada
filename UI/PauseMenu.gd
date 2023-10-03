extends CanvasLayer

@export var puase_control : PauseControl

func _on_resume_pressed():
	get_tree().paused = false
	$"../PopupMenu".hide()
#	$"../PauseControl".unpause()
	pass # Replace with function body.


func _on_main_menu_pressed():
	print("Menu")
	get_tree().change_scene_to_file("res://UI/MainMenu.tscn")
	pass # Replace with function body.
