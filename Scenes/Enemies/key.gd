extends CharacterBody2D

var hp =5
@export var Health = 5
# first hit doesn't register so -1 number



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
	if body.is_in_group("ship"):
		Health = Health - 1
