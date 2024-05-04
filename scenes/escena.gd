extends Node2D
var aguijon_ = preload("res://scenes/aguijon.tscn")
var mapa1 = preload("res://mapas/mapa1.tscn")
var mapa2 = preload("res://mapas/mapa2.tscn")
var mapa3 = preload("res://mapas/mapa3.tscn")
func _ready():
	randomize()
	var map = elegir_mapa_al_azar()
	get_tree().get_root().add_child(map.instantiate())
const radioCS = 23
var near = true

func _on_abeja_l_aguijon(pos,direction,rot):
	var aguijon = aguijon_.instantiate() as Area2D
	aguijon.position = pos
	aguijon.rotation = rot
	aguijon.direction = direction
	$aguijones.add_child(aguijon)
func elegir_mapa_al_azar():
	var mapas = [mapa1, mapa2, mapa3]
	var indice_aleatorio = randi() % mapas.size()
	return mapas[indice_aleatorio]

func _process(delta):
	var pos1 = $Abeja.position
	var pos2 = $Abeja2.position
	print(abs(pos1.x))
	print(abs(pos2.x))
	var dif1 = pos1.x-pos2.x
	var dif2 = pos1.y-pos2.y
	
	if abs(dif1)<=2*radioCS && abs(dif2)<=2*radioCS && near==true:
		near = false
		$Abeja.rotation += deg_to_rad(180)
		$Abeja2.rotation += deg_to_rad(180)
		$Abeja.direction = $Abeja.direction* (-1)
		$Abeja2.direction = $Abeja2.direction* (-1)
	else:
		near = true
