extends StaticBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
	
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	set_pos(Vector2(OS.get_window_size().x / 2, OS.get_window_size().y / 2))
	pass