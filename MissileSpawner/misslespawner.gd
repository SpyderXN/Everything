extends Node2D

@export var missiles: Array[PackedScene]
@onready var missiles_child: Node2D = $Missiles
@onready var spawntimer: Timer = $Spawntimer

@export var high_range: float
@export var low_range: float

var can_spawn = true


func _process(_delta: float) -> void:
	if can_spawn and missiles.size() > 0:
		can_spawn = false
		spawntimer.start()
		var missile_scene = missiles[randi() % missiles.size()].instantiate()
		missile_scene.position.x = randf_range(low_range, high_range)
		missiles_child.add_child(missile_scene)
		missile_scene.rotation = rotation


func _on_spawntimer_timeout() -> void:
	can_spawn = true
