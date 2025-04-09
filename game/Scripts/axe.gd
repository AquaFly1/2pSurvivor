extends Node2D


var speed = 100
var target_node = Node2D
@onready var axe: RigidBody2D = $"."


func _ready() -> void:
	target_node = Game.get_player_1()

func _process(delta: float) -> void:
	
	var direction = (target_node.global_position - global_position).normalized()
	axe.linear_velocity = direction * speed

func _on_body_entered(body: Node2D) -> void:
	print("ads")
	target_node = Game.get_player_2()
