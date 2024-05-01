extends CharacterBody2D
var target
var Speed = 200
var pathName = ""
var bulletDamage
var positon

@warning_ignore("unused_parameter")
func _process(delta):
	
	var pathSpawnerNode = get_tree().get_root().get_node("Map_2/PathSpawner")
	for i in pathSpawnerNode.get_child_count():
		if pathSpawnerNode.get_child(i).name == pathName:
			target = pathSpawnerNode.get_child(i).get_child(0).get_child(0).global_position

	velocity = global_position.direction_to(target) *Speed

	look_at(target)
	
	position = position.move_toward(target,Speed *delta)
	#move_and_collide(velocity * delta)

func _on_area_2d_body_entered(body):
	if "shipA" in body.name:
		body.Health -= bulletDamage
		queue_free()

