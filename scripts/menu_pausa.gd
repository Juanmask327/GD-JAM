extends Control

func _ready():
	visible = false
	process_mode = Node.PROCESS_MODE_ALWAYS

func _input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_ESCAPE:
		visible = not visible
		get_tree().paused = visible	

func _on_menu_btn_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/SeleccionNiveles.tscn")

func _on_play_btn_pressed() -> void:
	visible = false
	get_tree().paused = false


func _on_restart_btn_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
# corregir posición de botones
