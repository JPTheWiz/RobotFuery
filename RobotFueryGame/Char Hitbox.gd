extends KinematicBody2D
var Fire=preload("res://Fire.tscn")
export(NodePath) var background_path
var background

func _ready():
	set_fixed_process(true)
	background = get_node(background_path)
	set_pos(Vector2(OS.get_window_size().x / 2, OS.get_window_size().y / 2))
	pass
	
	
func _fixed_process(delta):
	#FIRE
	if(Input.is_action_pressed("MouseClick")):
		var NewF=Fire.instance()
		NewF.set_pos(get_pos())
		background.add_child(NewF)
		
		print("Fire:")
		print(NewF.get_pos())
		print ("Robot:")
		print(get_pos())
		print ("Background:")
		print (background.get_pos())
		
		
#Movement Shtuff:
		#DOWN
	if(Input.is_action_pressed("W")):
		move(Vector2(0, -1)*100*delta)
		
		#RIGHT
	elif(Input.is_action_pressed("A")):
		move(Vector2(-1, 0)*100*delta)
		
		#UP
	elif(Input.is_action_pressed("S")):
		move(Vector2(0, 1)*100*delta)
		
		#LEFT
	elif(Input.is_action_pressed("D")):
		move(Vector2(1, 0)*100*delta)