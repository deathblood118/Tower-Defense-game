extends Panel


@onready var tower = preload("res://Scenes/Tower scenes/green_tower.tscn")
var currTile


func _on_gui_input(event):
		var tempTower = tower.instantiate()
		#panel is creeated every time
		if event is InputEventMouseButton and event.button_mask == 1:
			 #nputEventMouseButton¶ Rpresents a mouse button being pressed or released.
			#left button down  and clicking
			
			add_child(tempTower)
			tempTower.global_position = event.global_position
			#tempTower.process_mode = Node.PROCESS_MODE_DISABLED
			
			tempTower.scale = Vector2(0.4,0.4)
			#making tower smaller when choosing it
			 
		elif event is InputEventMouseMotion and event.button_mask == 1:
			#button left down and dragging
			if get_child_count() > 1:
				
				get_child(1).global_position = event.global_position
				#Check if on Dirt Tile.
			
		elif event is InputEventMouseButton and event.button_mask == 0:
			#button left release
			if event.global_position.x >= 1700:
				if get_child_count() > 1:
					get_child(1).queue_free()
				
				#check for valid tile:
			else:
				if get_child_count() > 1:
					get_child(1).queue_free()
				
					var path = get_tree().get_root().get_node("Map_2/Towers")
					path.add_child(tempTower)
					tempTower.global_position = event.global_position
					tempTower.get_node("GArea").hide()
						
		else:
			if get_child_count() > 1:
				get_child(1).queue_free()
