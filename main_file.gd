extends Node2D

# Declare member variables here. Examples:
var enemy_scene = preload("res://scenes/Enemy.tscn") # Path to your Enemy scene
var spawn_timer = Timer.new() # Timer for spawning enemies



func _ready():
	# Called every time the node is added to the scene.
	# Initialize game setup here.
	set_process(true)
	setup_spawn_timer()

func _process(delta):
	# Called every frame. Delta is time since the last frame.
	# Update game logic here.

func setup_spawn_timer():
	add_child(spawn_timer)
	spawn_timer.wait_time = 2.0 # Spawn an enemy every 2 seconds
	spawn_timer.autostart = true
	spawn_timer.connect("timeout", self, "_on_spawn_timer_timeout")
	spawn_timer.start()

func _on_spawn_timer_timeout():
	# This function is called every time the spawn timer times out.
	# Use it to spawn enemies.
	var enemy = enemy_scene.instance()
	add_child(enemy)
	# Set the enemy's position or any other initialization logic here.
	enemy.position = Vector2(rand_range(0, get_viewport_rect().size.x), 0) # Random X position at top of screen

	
