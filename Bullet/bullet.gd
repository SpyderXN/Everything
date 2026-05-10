extends Area2D

var speed = 500

func _process(delta: float) -> void:
	position += transform.x * speed * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Missiles"):
		print("Missile")
		queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
