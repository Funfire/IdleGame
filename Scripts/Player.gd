extends AnimatedSprite


func _physics_process(delta):
	if Input.is_action_just_pressed("up"):
		$".".position.y = 140
	elif Input.is_action_pressed("down"):
		$".".position.y = 246