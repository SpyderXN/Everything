extends Node2D

const BULLET = preload("res://Bullet/bullet.tscn")
@onready var muzzle: Marker2D = $Marker2D

func _process(_delta: float) -> void:
	look_at(get_global_mouse_position())
	
	rotation_degrees = clamp(rotation_degrees, -180, 0)
	
	if Input.is_action_just_pressed("Fire"):
		var bullet_scene = BULLET.instantiate()
		get_tree().root.add_child(bullet_scene)
		bullet_scene.global_position = muzzle.global_position
		bullet_scene.rotation = rotation
		
