extends CharacterBody2D

@export var speed = 100

func _process(delta):
	get_parent().set_progress(get_parent().set_progress() *speed*delta)
