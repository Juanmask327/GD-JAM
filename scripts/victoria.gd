extends CanvasLayer

func _ready() -> void:
	visible = false
	add_to_group("victoria")

func mostrar() -> void:
	visible = true
	await get_tree().create_timer(3.0).timeout
	get_tree().change_scene_to_file("res://scenes/SeleccionNiveles.tscn")
