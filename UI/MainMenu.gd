extends Control


func _on_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
	pass # Replace with function body.


func _on_options_pressed():
	get_tree().change_scene_to_file("res://UI/Configurations.tscn")
	pass # Replace with function body.


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://UI/Credits.tscn")
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
