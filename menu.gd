extends Control
# Pre-carga la escena que quieres instanciar.
func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/escena.tscn")
func _on_settings_pressed():
	get_tree().change_scene_to_file("res://MenuSeleccionPersonaje.tscn")
func _on_exit_pressed():
	queue_free()
