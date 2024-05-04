extends Area2D
var direction
var speed= 300
func _process(delta):
	position += (-direction)* speed * delta
func _on_body_entered(body):
	body.hit()
	queue_free()
