extends StaticBody2D
var positionStart=position-position
var direction = 0


func _process(delta):
	if $Line2D.get_point_count() > 2:
		$Line2D.remove_point($Line2D.get_point_count()-2)
	$Line2D.add_point(positionStart,-1)
	$Line2D.set_point_position(1,$Plug.position)
	
	
	if  direction == 0:
		$Plug.position.x +=2
		if $Plug.position.x >360:
			$Res.visible = true
		if $Plug.position.x >= 380:
			direction = 1
	if direction ==1:
		$Plug.position.x -=2
		if $Plug.position.x <360:
			$Res.visible = false
		if $Plug.position.x <= 56:
			direction = 0
		
