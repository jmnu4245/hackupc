extends Control
var scene = load("res://escena.tscn")
var instance = preload("res://mapas/mapa1.tscn").instantiate()
func _on_play_pressed():
	scene.add_node(instance)
	get_tree().change_scene_to_file("res://escena.tscn")
func _on_settings_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	pass # Replace with function body.
