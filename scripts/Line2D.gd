extends Line2D

@export var static_body: StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_collision() -> void:
	if points.size() < 2:
		return
	for i in points.size() -1:
		# creating collision shape between every two points
		var new_shape = CollisionShape2D.new()
		new_shape.name = 'CollisionShapeP'+str(i+1)+str(i+2) 
		static_body.add_child(new_shape)
		var rect = RectangleShape2D.new()
		new_shape.name = 'RectangleShape'+str(i+1)+str(i+2)
		new_shape.position = (points[i] + points[i+1] /2)
		new_shape.rotation = points[i].direction_to(points[i+1]).angle()
		var len = points[i].distance_to(points[i+1])
		rect.size = Vector2(len, 10)
		new_shape.shape = rect
	pass
