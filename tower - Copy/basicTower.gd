extends Node2D

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	turn()
	
func turn():
	var enemy_position = get_global_mouse_position()
	get_node("turret").look_at(enemy_position)
	


