extends StaticBody2D

onready var notCont = int($NotCont.text)
onready var andCont = int($AndCont.text)
onready var orCont = int($OrCont.text)
onready var xorCont = int($XorCont.text)

func _process(delta):
	$NotCont.text = str(notCont)
	$AndCont.text = str(andCont)
	$OrCont.text = str(orCont)
	$XorCont.text = str(xorCont)


func openTrash(port):
	$AnimatedSprite.play("open")
	if port == "NOT":
		notCont+=1
	elif port == "AND":
		andCont+=1
	elif port == "OR":
		orCont+=1
	elif port == "XOR":
		xorCont+=1


func closeTrash(port):
	$AnimatedSprite.play("close")
	if Input.is_mouse_button_pressed(1):
		if port == "NOT":
			notCont-=1
		elif port == "AND":
			andCont-=1
		elif port == "OR":
			orCont-=1
		elif port == "XOR":
			xorCont-=1
	

