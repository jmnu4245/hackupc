extends CharacterBody2D

@export var SPEED = 300
@export var direction = Vector2(0,0)
signal l_aguijon(position,direction,r)

var abeja
var color:AnimatedSprite2D
func _ready():
	abeja = GLOBAL.abeja2
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
	get_tree().change_scene_to_file("res://scenes/menu_final.tscn")
	GLOBAL.winner = "RIGHT PLAYER"
