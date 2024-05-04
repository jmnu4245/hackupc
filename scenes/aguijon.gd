extends Area2D

var pos:Vector2 = Vector2.ZERO
var direction:Vector2 = Vector2.ZERO
const speed:int = 5
var rot

func _ready():
	position = pos
	rotation_degrees = rot
	
	
func _process(delta):
	if direction==Vector2(1,0):
		pos.x += speed*delta
		rot = 90
	if direction==Vector2(-1,0):
		pos.x -= speed*delta
		rot = 180
	if direction==Vector2(0,1):
		pos.y += speed*delta
		rot = 270
	if direction==Vector2(0,-1):
		pos.y += speed*delta
		rot = 0

	
