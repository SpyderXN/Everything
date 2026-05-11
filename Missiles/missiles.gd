extends Area2D

@export var speed = 500
@onready var camera: Camera2D = get_tree().get_first_node_in_group("Camera")

func _process(delta: float) -> void:
	position += transform.y * speed * delta


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("City"):
		print("Attacked")
		camera.trigger_shake()
		Globals.city_damage(10)
		queue_free()
	


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Bullet"):
		print("Bullet")
		camera.trigger_shake()
		queue_free()
