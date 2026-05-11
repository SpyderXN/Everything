extends Node2D

@onready var survival_timer: Timer = $SurvivalTimer

func _process(delta: float) -> void:
	if Globals.city_health == 0:
		get_tree().change_scene_to_file("res://GameOverPanel/game_over_panel.tscn")
