# Script for tower behavior, including targeting and attacking mechanics.
extends Area2D

# Tower properties
var attack_range = 200 # Adjust based on tower's attack range
var attack_speed = 1.0 # Attacks per second
var damage = 10 # Damage per attack
var cost = 100 # Cost to place the tower

var target: Node = null # Current target
var time_since_last_attack = 0.0

# Signal to indicate when an enemy enters the tower's range
signal enemy_detected

func _ready():
	# Set up the attack range visibility and collision detection
	var collision_shape = CollisionShape2D.new()
	collision_shape.shape = CircleShape2D.new()
	collision_shape.shape.radius = attack_range
	add_child(collision_shape)

	# Optionally, draw the attack range for visual debugging
	# draw_circle(Vector2(), attack_range, Color(1, 0, 0, 0.5))

	connect("body_entered", self, "_on_body_entered")
	connect("body_exited", self, "_on_body_exited")

func _process(delta):
	time_since_last_attack += delta
	if target and time_since_last_attack >= 1.0 / attack_speed:
		attack()
		time_since_last_attack = 0.0

# Attacks the current target
func attack():
	if target:
		# Implement the attack logic here. For example:
		target.call("take_damage", damage)
		# Add effects or animations for the attack

# Called when an enemy enters the tower's range
func _on_body_entered(body):
	if target == null and body.is_in_group("enemies"):
		target = body
		emit_signal("enemy_detected", body)

# Called when an enemy exits the tower's range
func _on_body_exited(body):
	if target == body:
		target = null


