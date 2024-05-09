extends Control

@onready var main_file = $"." #originally just main in case this fails
#attached to main so it knows to call the stuff in here



func _on_resume_pressed():
	main_file.PauseMenu()

func _on_exit_pressed():
	get_tree().quit() #exits the game completely


func _on_team_pressed():	
	pass
		
