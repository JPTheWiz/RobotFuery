extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (Texture)var CharUp
export (Texture)var CharDown
export (Texture)var CharLeft
export (Texture)var CharRight

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	pass
	
func _fixed_process(delta):
	if(Input.is_action_pressed("S")):
		set_texture(CharDown)
		
	elif(Input.is_action_pressed("D")):
		set_texture(CharRight)
		
	elif(Input.is_action_pressed("W")):
		set_texture(CharUp)
		
	elif(Input.is_action_pressed("A")):
		set_texture(CharLeft)