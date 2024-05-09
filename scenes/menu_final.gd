extends Control

func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _process(delta):
	$label_winner.text = "WINNER: " + GLOBAL.winner
