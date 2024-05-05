extends Node
var abeja1sprite = "res://sprites/sprites abejas/MovimientoAbeja1.png"
var abeja2sprite = "res://sprites/sprites abejas/MovimientoAbeja1.png"
func setabejas(abeja, abeja2):
	# Cambiar la ruta del sprite 1
	var abeja1sprite = "res://sprites/sprites abejas/MovimientoAbeja" + str(abeja) + ".png"
	
	# Cambiar la ruta del sprite 2
	var abeja2sprite = "res://sprites/sprites abejas/MovimientoAbeja" + str(abeja2) + ".png"
