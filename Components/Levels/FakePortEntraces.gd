extends StaticBody2D
var positionStart=position-position
var direction = 0


func _process(delta):
	if $Line2D.get_point_count() > 2:
		$Line2D.remove_point($Line2D.get_point_count()-2)
	$Line2D.add_point(positionStart,-1)
	$Line2D.set_point_position(1,$Plug.position)
	
	
	if  direction == 0:
		$Plug.position.y +=1
		if $Plug.position.y >= 15:
			$Res.text = "(A*)"
		if $Plug.position.y >= 20:
			direction = 1
			$Res.text = "(*A)"
	if direction ==1:
		$Plug.position.y -=1
		if $Plug.position.y <= -15:
			$Res.text = "(A*)"
		if $Plug.position.y <= -20:
			direction = 0

