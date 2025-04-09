extends Line2D

@onready var bolt: Line2D = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	bolt.points = [Game.get_player_1().position, Game.get_player_2().position]
	for i in points.size() - 1:
		var new_shape = CollisionShape2D.new()       
		$StaticBody2D.add_child(new_shape)        
		var segment = SegmentShape2D.new()
		segment.a = points[i]      
		segment.b = points[i + 1]
		new_shape.shape = segment

func _on_static_body_2d_body_entered(body: Node2D) -> void:
	if body is not Player:
		print("a")
