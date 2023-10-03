extends Area2D


func _on_body_entered(body):
	Global.Setted = false
	get_tree().change_scene_to_file("res://Levels/level_2.tscn")
	pass # Replace with function body.
