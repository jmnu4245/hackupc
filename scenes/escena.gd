extends Node2D
var aguijon = preload("res://scenes/aguijon.tscn")
func _on_abeja_l_aguijon(nodo_emisor):
	var instance = nodo_emisor.instance()
	$aguijones.add_child(instance)
