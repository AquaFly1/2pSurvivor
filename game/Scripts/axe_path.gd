extends Path2D

@onready var sprite: Sprite2D = $PathFollow2D/axe/Sprite2D2

@onready var path_follow: PathFollow2D = $PathFollow2D
var speed = 5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	curve.set_point_position(0, Game.get_player_1().position)
	curve.set_point_position(1, Game.get_player_2().position)
	print(path_follow.progress_ratio)
	if snapped(path_follow.progress_ratio, 0.1) == 1:
		speed *= -1
		sprite.flip_h
	elif snapped(path_follow.progress_ratio, 0.1) == 0:
		speed *= -1
		sprite.flip_h
	path_follow.progress += speed
