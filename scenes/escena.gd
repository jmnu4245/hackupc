extends Node2D
var aguijon_ = preload("res://scenes/aguijon.tscn")
const radioCS = 23
var near = true

func _on_abeja_l_aguijon(pos,direction,rot):
	var aguijon = aguijon_.instantiate() as Area2D
	aguijon.position = pos
	aguijon.rotation = rot
	aguijon.direction = direction
	$aguijones.add_child(aguijon)

func _process(delta):
	var pos1 = $Abeja.position
	var pos2 = $Abeja2.position
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
