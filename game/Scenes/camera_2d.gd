extends Camera2D
@onready var camera: Camera2D = $"."

func _process(delta: float) -> void:
	var x = (Game.get_player_1().position.x + Game.get_player_2().position.x)/2
	var y = (Game.get_player_1().position.y + Game.get_player_2().position.y)/2
	camera.position = Vector2(x,y)
