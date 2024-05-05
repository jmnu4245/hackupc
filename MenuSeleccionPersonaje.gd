extends Control
# Called when the node enters the scene tree for the first time.
signal spriteabejas(abeja,abeja2)
var abeja = 1
var abeja2 =1
var last_pressed_button = null
func _on_button_pressed():
	save(abeja,abeja2)
	get_tree().change_scene_to_file("res://Menu.tscn")
func _on_texture_button_1_pressed():
	abeja=1
	desactivar_botones(1)
func _on_texture_button_2_pressed():
	abeja=2
	desactivar_botones(2)
func _on_texture_button_3_pressed():
	abeja=3
	desactivar_botones(3)
func _on_texture_button_4_pressed():
	abeja=4
	desactivar_botones(4)
func desactivar_botones(i: int) -> void:
	match i:
		1:
			$TextureButton1.button_pressed = true
			$TextureButton2.button_pressed = false
			$TextureButton3.button_pressed = false
			$TextureButton4.button_pressed = false
		2:
			$TextureButton1.button_pressed = false
			$TextureButton2.button_pressed = true
			$TextureButton3.button_pressed = false
			$TextureButton4.button_pressed = false
		3:
			$TextureButton1.button_pressed = false
			$TextureButton2.button_pressed = false
			$TextureButton3.button_pressed = true
			$TextureButton4.button_pressed = false
		4:
			$TextureButton1.button_pressed = false
			$TextureButton2.button_pressed = false
			$TextureButton3.button_pressed = false
			$TextureButton4.button_pressed = true
func _on_texture_button_5_pressed():
	abeja2=1
	desactivar_botones1(5)
func _on_texture_button_6_pressed():
	abeja2=2
	desactivar_botones1(6)
func _on_texture_button_7_pressed():
	abeja2=3
	desactivar_botones1(7)
func _on_texture_button_8_pressed():
	abeja2=4
	desactivar_botones1(8)
func desactivar_botones1(i: int) -> void:
	match i:
		5:
			$TextureButton5.button_pressed = true
			$TextureButton6.button_pressed = false
			$TextureButton7.button_pressed = false
			$TextureButton8.button_pressed = false
		6:
			$TextureButton5.button_pressed = false
			$TextureButton6.button_pressed = true
			$TextureButton7.button_pressed = false
			$TextureButton8.button_pressed = false
		7:
			$TextureButton5.button_pressed = false
			$TextureButton6.button_pressed = false
			$TextureButton7.button_pressed = true
			$TextureButton8.button_pressed = false
		8:
			$TextureButton5.button_pressed = false
			$TextureButton6.button_pressed = false
			$TextureButton7.button_pressed = false
			$TextureButton8.button_pressed = true
func save(abeja,abeja2):
	get_node("/root/GLOBAL").abeja= abeja
	get_node("/root/GLOBAL").abeja2= abeja2
