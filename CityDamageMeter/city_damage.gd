extends Control

@onready var city_damage_meter: ProgressBar = $ProgressBar

func _ready() -> void:
	city_damage_meter.value = Globals.city_health

func _process(_delta: float) -> void:
	city_damage_meter.value = Globals.city_health
