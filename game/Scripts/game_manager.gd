extends Node

@export var speed = 1
var can_move = true
var player_health = 100
signal player_take_damage(amount)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if can_move:
		if Input.is_action_just_pressed("Swap"):
			var hold = get_player_1().position
			get_player_1().position = get_player_2().position
			get_player_2().position = hold

func get_player_1() -> Player:
	return get_tree().get_first_node_in_group("player 1")
func get_player_2() -> Player:
	return get_tree().get_first_node_in_group("player 2")

func get_distance(object1, object2):
	return pow(pow((object1.position.x - object2.position.x), 2) + pow((object1.position.y - object2.position.y), 2), 0.5)

func _on_player_take_damage(amount: Variant) -> void:
	player_health -= amount
	print(player_health)
