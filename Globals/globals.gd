extends Node

var energy_value = 100
var max_energy = 100

var city_health = 100

func energy_depletion(value):
	if energy_value > 0:
		energy_value -= value
		if energy_value < 0:
			energy_value = 0
	print(energy_value)

func gain_energy(value):
	if energy_value < max_energy:
		energy_value += value
		if energy_value > max_energy:
			energy_value = max_energy
	print(energy_value)

func city_damage(value):
	var damage = city_health - value
	city_health = damage
