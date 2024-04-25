extends CharacterBody2D


@export var Health = 5



func _process(delta):
	if Health == 0:
		death()
	if Health == 4:
		print("Health is 4")
	if Health == 3:
		print("Health is 3")
	if Health == 3:
		print("Health is 3")
	if Health == 2:
		print("Health is 2")
	if Health == 1:
		print("Health is 1")
		
func death():
	get_parent().get_parent().queue_free()



	


func _on_area_2d_body_entered(body):
		Health -= 1
