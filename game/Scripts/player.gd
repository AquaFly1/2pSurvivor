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
func _process(delta: float) -> void:
	if Game.can_move:
		if player_1:
			if Input.is_action_pressed("P1_up"):
				player.position += Vector2(0,-1) * Game.speed
			if Input.is_action_pressed("P1_down"):
				player.position += Vector2(0,1) * Game.speed
			if Input.is_action_pressed("P1_left"):
				player.position += Vector2(-1,0) * Game.speed
			if Input.is_action_pressed("P1_right"):
				player.position += Vector2(1,0) * Game.speed
		if not player_1:
			if Input.is_action_pressed("P2_up"):
				player.position += Vector2(0,-1) * Game.speed
			if Input.is_action_pressed("P2_down"):
				player.position += Vector2(0,1) * Game.speed
			if Input.is_action_pressed("P2_left"):
				player.position += Vector2(-1,0) * Game.speed
			if Input.is_action_pressed("P2_right"):
				player.position += Vector2(1,0) * Game.speed
