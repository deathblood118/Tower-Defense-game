#Manages the game's UI elements, like score display, health bars, and menus.
extends Node

# UI elements
onready var score_label = $CanvasLayer/ScoreLabel
onready var lives_label = $CanvasLayer/LivesLabel
onready var game_over_screen = $CanvasLayer/GameOverScreen

# Singleton instance
static var instance: UIManager

func _ready():
    instance = self
    game_over_screen.hide() # Hide the game over screen at game start

# Function to update the score display
func update_score(score: int):
    score_label.text = "Score: %d" % score

# Function to update the lives display
func update_lives(lives: int):
    lives_label.text = "Lives: %d" % lives

# Function to show the game over screen
func show_game_over():
    game_over_screen.show()

# Function to reset the UI for a new game or level
func reset_ui():
    game_over_screen.hide()
    update_score(0)
    update_lives(3) # Assuming the player starts with 3 lives, adjust as needed
