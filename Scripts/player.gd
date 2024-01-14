extends KinematicBody2D

var hp_max: int = 250
var inventory: Array = []
var experience = 20
var mp_max: int = 50

var speed: int = 350
var velocity: Vector2

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide(velocity * speed)

func get_input() -> void:
	velocity = Vector2.ZERO
	velocity.x = -int(Input.is_action_pressed("ui_left")) + int(Input.is_action_pressed("ui_right"))
	velocity.y = -int(Input.is_action_pressed("ui_up")) + int(Input.is_action_pressed("ui_down"))

func _input(event: InputEvent) -> void:
	# Function to hold other actions like pressing "E" to interact with NPCs, chests, etc
	pass
