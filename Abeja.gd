extends CharacterBody2D

@export var SPEED = 300
@export var direction = Vector2(0,0)
signal l_aguijon(nodo_emisor)


func _physics_process(_delta):
	# Add the gravity.
	direction = input(direction,rotation_degrees)
	print(direction)
	velocity = direction * SPEED 
	move_and_slide()
func input(direction,rotation_degrees):
	var d = direction
	var r = rotation
	if Input.is_action_just_pressed("space"):
		lanzar_aguijon()
	if Input.is_action_just_pressed("up"):
		d = Vector2(0,-1)
		r = deg_to_rad(0)
	elif Input.is_action_just_pressed("down"):
		d = Vector2(0,1)
		r = deg_to_rad(180)
	elif Input.is_action_just_pressed("right"):
		d =Vector2(1,0)
		r = deg_to_rad(90)
	elif Input.is_action_just_pressed("left"):
		d = Vector2(-1,0)
		r = deg_to_rad(270)
	if (d.dot(direction) == -1):
		return direction
		
	else:
		rotation = r
		return d
		

func lanzar_aguijon():
	l_aguijon.emit(l_aguijon,self)
