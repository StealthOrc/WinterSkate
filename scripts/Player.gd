extends Node2D
class_name Player

@export var follow_node: PathFollow2D

var is_jumping = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Speed in s
	var speed = 80
	if is_instance_valid(follow_node):
		follow_node.progress += speed * delta
	else:
		var Direction: Vector2 = Vector2(0,Input.get_axis("move_up","move_down"))
		Direction.x = Input.get_axis("move_left","move_right")
		self.position += (Direction * speed) * delta
	pass
