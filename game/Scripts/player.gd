class_name Player
extends RigidBody2D


@export var sprite: Texture2D
@export var player_1 = true

@onready var player: RigidBody2D = $"."
@onready var player_sprite: Sprite2D = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player_sprite.texture = sprite

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Game.can_move:
		if player_1:
			var input_direction = Input.get_vector("P1_left", "P1_right", "P1_up", "P1_down")
			var velocity = input_direction * Game.speed
			player.move_and_collide(velocity)
		if not player_1:
			var input_direction = Input.get_vector("P2_left", "P2_right", "P2_up", "P2_down")
			var velocity = input_direction * Game.speed
			player.move_and_collide(velocity)
