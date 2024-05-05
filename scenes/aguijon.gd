extends Area2D
var direction
var speed= 300
var Abeja = preload("res://scenes/abeja.tscn")
func _process(delta):
	position += (-direction)* speed * delta
func _on_body_entered(body):
	body.hit()
	queue_free()
