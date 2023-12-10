extends Node2D
class_name world

@onready var path_2d = $Path2D
@onready var line_2d = $Line2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	line_2d.position = path_2d.position
	var points = path_2d.curve.get_baked_points()
	for point in points:  
		line_2d.add_point(point) 
	line_2d.set_collision()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_rail_detector_body_entered(body: Node2D) -> void:
	print_debug(body.name+' entered')
	pass # Replace with function body.
