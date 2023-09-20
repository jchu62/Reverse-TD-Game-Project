extends StaticBody2D

var Bullet
var bulletDamage
var pathName
var currentTarget = []
var currentEnemyTargetted
const Enemy = preload("res://Scripts/Unit.gd")



func _on_tower_radius_body_entered(body):
	if ($CharacterBody2D is Enemy in body.name()):
		currentTarget = get_node("Tower").get_overlapping_bodies()


func _on_tower_radius_body_exited(body):
	pass # Replace with function body.
