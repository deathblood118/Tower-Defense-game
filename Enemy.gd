#Script for enemy behavior, such as movement, health, and attack patterns.
extends KinematicBody2D

# Enemy properties
var speed = 100 # Adjust speed as necessary
var health = 100 # Initial health

# Target position for the enemy to move towards
# In a tower defense game, this could be the end of a path or the player's base
var target_position = Vector2()

func _ready():
    # Initialize target_position, could be set to a specific node in the scene or a dynamic position
    target_position = Vector2(SCREEN_WIDTH / 2, SCREEN_HEIGHT) # Example target, adjust as necessary

func _process(delta):
    # Move towards the target position
    var direction = (target_position - position).normalized()
    move_and_slide(direction * speed)

# Function to handle taking damage
func take_damage(amount):
    health -= amount
    if health <= 0:
        die()

# Function to handle enemy death
func die():
    # Add death logic here, such as playing an animation or dropping loot
    queue_free() # Removes the enemy from the scene

