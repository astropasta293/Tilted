extends RigidBody2D
const speed = 100

func _physics_process(delta: float):
	if Input.is_key_pressed(KEY_W):
		apply_central_force(Vector2.UP * speed)
	if Input.is_key_pressed(KEY_S):
		apply_central_force(Vector2.DOWN * speed)
	if Input.is_key_pressed(KEY_D):
		apply_central_force(Vector2.RIGHT * speed)
	if Input.is_key_pressed(KEY_A):
		apply_central_force(Vector2.LEFT * speed)
	if !Input.is_key_pressed(KEY_W) && !Input.is_key_pressed(KEY_S) && !Input.is_key_pressed(KEY_D) && !Input.is_key_pressed(KEY_A):
				linear_velocity = linear_velocity.move_toward(Vector2.ZERO, delta * speed)
	
