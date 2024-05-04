extends Node2D
var aguijon_ = preload("res://scenes/aguijon.tscn")

func _on_abeja_l_aguijon(pos,direction,rot):
	var aguijon = aguijon_.instantiate() as Area2D
	aguijon.position = pos
	aguijon.rotation = rot
	aguijon.direction = direction
	$aguijones.add_child(aguijon)
