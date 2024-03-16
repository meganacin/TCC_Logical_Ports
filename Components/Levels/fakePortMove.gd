extends StaticBody2D

var direction = 0

func _process(delta):
	if  direction == 0:
		position.x +=1.5
		if position.x >= 200:
			direction = 1
	if direction ==1:
		position.x -=1.5
		if position.x <= 50:
			direction = 0
		
