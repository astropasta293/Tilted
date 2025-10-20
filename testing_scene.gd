extends Node2D
const inc_val = .01
func _process(delta: float):
	if Input.is_key_pressed(KEY_A):
		rotation -= inc_val
	elif Input.is_key_pressed(KEY_D):
		rotation += inc_val
