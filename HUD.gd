extends CanvasLayer



func _on_pause_pressed():
	get_tree().paused = true
	$PauseMenu.show()



func _on_main_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://UI/MainMenu.tscn")



func _on_resume_pressed():
	get_tree().paused = false
	$PauseMenu.hide()
	pass # Replace with function body.
