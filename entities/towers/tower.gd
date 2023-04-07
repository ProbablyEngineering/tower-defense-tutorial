extends StaticBody2D
class_name Tower

@export_range(1, 1000) var health: int = 100:
	set = set_health

@onready var collision := $CollisionShape2D as CollisionShape2D
@onready var shooter := $Shooter as Shooter
	
func set_health(value: int) -> void:
	health = max(0, value)
	if health == 0:
		collision.set_deferred("disabled", true)
		shooter.die()