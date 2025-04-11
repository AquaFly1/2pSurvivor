extends Path2D

@onready var path_follow: PathFollow2D = $PathFollow2D
var speed = 10
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	curve.set_point_position(0, Game.get_player_1().position)
	curve.set_point_position(1, Game.get_player_2().position)
	if path_follow.progress_ratio == 1:
		speed *= -1
	elif path_follow.progress_ratio == 0:
		speed *= -1
	path_follow.progress += speed
