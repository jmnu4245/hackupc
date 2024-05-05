extends CharacterBody2D

@export var SPEED = 300
@export var direction = Vector2(0,0)
signal l_aguijon(position,direction,r)

func _physics_process(_delta):
	$Sprite2D.play("idle")

	direction = input(direction,rotation_degrees)
	velocity = direction * SPEED 
	move_and_slide()
func input(direction,rotation_degrees):
	var d = direction
	var r = rotation
	if Input.is_action_just_pressed("space"):
		l_aguijon.emit($Marker2D.global_position,direction,r)
		$disparo2.play()
	if Input.is_action_just_pressed("w"):
		d = Vector2(0,-1)
		r = deg_to_rad(0)
	elif Input.is_action_just_pressed("s"):
		d = Vector2(0,1)
		r = deg_to_rad(180)
	elif Input.is_action_just_pressed("d"):
		d =Vector2(1,0)
		r = deg_to_rad(90)
	elif Input.is_action_just_pressed("a"):
		d = Vector2(-1,0)
		r = deg_to_rad(270)
	if (d.dot(direction) == -1):
		return direction
	else :
		rotation = r
		return d
func hit():
	$muerte2.play()
	queue_free()
	get_tree().paused = true
