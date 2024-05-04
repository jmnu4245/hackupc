extends Path2D
@export var speed= 100
func _ready():
	$PathFollow2D/AnimatedSprite2D.play("idle")

func _process(delta):
	$PathFollow2D.progress += speed * delta
