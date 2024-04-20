#A global script to manage game-wide variables and states, such as score, player lives, and game progression.
extends Node

# Singleton instance
static var instance: GameManager

# Game state variables
var score = 0
var is_game_over = false

func _ready():
	instance = self
	set_process(true)
	start_game()

func start_game():
	score = 0
	is_game_over = false
	# Reset or initialize game elements here
	print("Game Started")

func add_score(points : int):
	if not is_game_over:
		score += points
		# Update UI or perform other actions related to score change
		print("Score: ", score)

func game_over():
	is_game_over = true
	# Handle game over logic here (e.g., display game over screen, disable player control)
	print("Game Over")

