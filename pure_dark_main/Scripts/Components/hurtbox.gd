class_name HurtBox
extends Area2D

signal recieved_damage(damage: int)

@export var health: Health

func _ready():
	connect("area_entered", on_area_entered)

func on_area_entered(hitbox: HitBox) -> void:
	if hitbox == null:
		health.health -= hitbox.damage
		recieved_damage.emit(hitbox.damage)
