extends Control

@onready var energy_meter: ProgressBar = $ProgressBar
@onready var energytimer: Timer = $Energytimer

func _ready() -> void:
	energy_meter.value = Globals.energy_value

func _process(_delta: float) -> void:
	energy_meter.value = Globals.energy_value
	
	# Start timer ONLY when energy hits 0 and timer is not already running
	if Globals.energy_value == 0 and energytimer.is_stopped():
		energytimer.start()

func _on_energytimer_timeout() -> void:
	Globals.gain_energy(10)
	
	# Stop timer when fully charged
	if Globals.energy_value >= Globals.max_energy:
		energytimer.stop()
	
