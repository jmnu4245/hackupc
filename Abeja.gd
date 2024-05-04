extends CharacterBody2D


@export var SPEED = 300
@export var direction = Vector2(0,1)
# Get the gravity from the project settings to be synced with RigidBody nodes.


func _physics_process(delta):
	# Add the gravity.
	direction = input(direction)
	print(direction)
	velocity = direction * SPEED 
	move_and_slide()
func input(direction):
	var d = direction 
	if Input.is_action_just_pressed("up"):
		d = Vector2(0,-1)
	elif Input.is_action_just_pressed("down"):
		d = Vector2(0,1)
	elif Input.is_action_just_pressed("right"):
		d =Vector2(1,0)
	elif Input.is_action_just_pressed("left"):
		d = Vector2(-1,0)
	if (d.dot(direction) == -1):
		return direction
	else:
		return d


