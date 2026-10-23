extends Area2D

func _ready() -> void:
	add_to_group("meta")
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	print("Meta tocada por: ", body.name)
	if body.has_method("ganar"):
		body.ganar()
