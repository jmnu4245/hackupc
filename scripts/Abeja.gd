extends CharacterBody2D

@export var SPEED = 300
@export var d = Vector2(0,0)
var direction = Vector2(0,0)
signal l_aguijon(position,direction,r)
var abeja
var color:AnimatedSprite2D
func _ready():
	abeja = GLOBAL.abeja
	if (abeja == 1):
		color = %color1_1
	elif (abeja == 2):
		color=%color2_1
	elif (abeja == 3):
		color=%color3_1
	else:	
		color=%color4_1
	color.visible = true
func _physics_process(_delta):
	color.play("idle")
	direction = input(direction,rotation_degrees)
	velocity = direction * SPEED 
	print(velocity)
	move_and_slide()
func input(direction,rotation_degrees):
	var r = rotation
	if Input.is_action_just_pressed("spacex"):
		l_aguijon.emit($Marker2D.global_position,direction,r)
		$disparo2.play()
		get_tree().create_timer(1).timeout
	if Input.is_action_just_pressed("up"):
		d= Vector2(0,-1)
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
func hit():
	$muerte2.play()
	get_tree().change_scene_to_file("res://scenes/menu_final.tscn")
	queue_free()
	GLOBAL.winner = "LEFT PLAYER"
	#get_tree().paused = true

