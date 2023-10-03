extends StaticBody2D

signal areaLeave
# Called when the node enters the scene tree for the first time.
func _ready():
	areaLeave.emit()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_exited(body):
	print("Salio del area")
	pass # Replace with function body.
