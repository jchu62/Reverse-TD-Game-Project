extends "res://Scripts/Tower.gd"

func _init():
	var Bullet = "res://Towers/missile.tscn"
	var bulletDamage = 1
	var pathName
	var currentTarget = []
	var currentEnemyTargetted
