extends RigidBody2D
@onready var enemy: RigidBody2D = $"."
@export var target: String
var target_node = Node2D
@export var speed = 1
@export var size = 1.0
@export var damage = 1

func _ready() -> void:
	enemy.scale.x = size
	enemy.scale.y = size
	
func _process(delta: float) -> void:
	if target == "player":
		if Game.get_distance(Game.get_player_1(), enemy) <= Game.get_distance(Game.get_player_2(), enemy):
			target_node = Game.get_player_1()
		else: 
			target_node = Game.get_player_2()
	var direction = (target_node.global_position - global_position).normalized()
	linear_velocity = direction * speed


func _on_body_entered(body: Node) -> void:
	if body is Player:
		Game.player_take_damage.emit(damage)
		print("player hit")
