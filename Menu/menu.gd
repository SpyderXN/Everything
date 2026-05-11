extends CanvasLayer


func _on_start_pressed() -> void:
	#TransitionLayer.change_scene_to("res://Main/main.tscn")
	get_tree().change_scene_to_file("res://Main/main.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
