extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -700.0
@onready var acceleration = 1
@onready var audioPlayer = $AudioStreamPlayer2D
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		acceleration += 10
		velocity.y += gravity * delta

	# Handle Jump.
	if is_on_floor():
		audioPlayer.play()
		velocity.y = JUMP_VELOCITY
		acceleration = 1

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * (SPEED + acceleration)
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()




func _on_button_pressed():
	$"../PauseControl".pause()
	pass # Replace with function body.


func _on_area_2d_body_entered(body):
	print("area entro")
	body.queue_free()
	pass # Replace with function body.
