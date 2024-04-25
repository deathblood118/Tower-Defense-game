extends Node



func _ready():	
	#get_node("MainMenu/MarginContainer/VBoxContainer/StartGame").pressed.connect("on_start_game_pressed")
	#get_node("MainMenu/MarginContainer/VBoxContainer/QuitGame").pressed.connect("on_quit_game_pressed")
	var menu = preload("res://main_menu.tscn")
	

func on_start_game_pressed():
	pass 	#hit start button
	 #hit start button call game scene and call place holder map



func on_quit_game_pressed():	#Hit Quit button and close out the game from main menu
	get_tree().quit()

# Called when the node enters the scene tree for the first time.



