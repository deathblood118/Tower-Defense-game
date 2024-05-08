extends CharacterBody2D

@export var speed = 1000
var Health = 20

func _process(delta):
	get_parent().set_progress(get_parent().set_progress() *speed*delta)
	if get_parent().get_progress_ratio() == 1:
		death()

		
	if Health <= 0:
		death()
	
	
func death():
	get_parent().get_parent().queue_free()
