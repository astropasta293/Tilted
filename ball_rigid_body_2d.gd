extends RigidBody2D

func _physics_process(delta: float):
	if Input.is_key_pressed(KEY_SPACE):
		gravity_scale = -.1
	else:
		gravity_scale = .1
