extends CharacterBody2D

var speed
var health

signal died()
signal damaged(oldHealth, newHealth)

func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()

func takeDamage(damage):
	var oldHealth = health
	health = health - damage
	emit_signal("hurt", oldHealth, health)
	if (health <= 0):
		emit_signal("died")
		
#func _ready():
#	self.connect("died", "die")

func die():
	self.queue.free()
