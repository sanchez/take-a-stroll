extends CharacterBody2D


const SPEED = 80.0


func _physics_process(_delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_axis("left", "right")
	input_vector.y = Input.get_axis("up", "down")
	input_vector = input_vector.normalized()
	
	if input_vector.length_squared() == 0:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)
	else:
		velocity = input_vector * SPEED

	move_and_slide()
