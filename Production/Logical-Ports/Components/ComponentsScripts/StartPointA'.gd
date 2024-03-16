extends Area2D

var Plugselected=false
var objectSelected=false
var positionStart=position-position
var plugged = false
var pluggedPosition:=Vector2(0,0)

var value="A'"
func _process(delta):
	#positionStart=position-position
	if $Line2D.get_point_count() > 2:
		$Line2D.remove_point($Line2D.get_point_count()-2)
	$Line2D.add_point(positionStart,-1)
	$Line2D.set_point_position(1,$Plug.position)
	if objectSelected:
		seguirMouse()
	if Plugselected:
		moverPlug()
	elif !Plugselected and !plugged:
		$Plug.position = Vector2(positionStart[0]+45,positionStart[1])
	elif !Plugselected and plugged:
		$Plug.position = pluggedPosition


func _on_StartPointA_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			objectSelected=true
		else:
			#soltando o click
			objectSelected = false


func _on_Plug_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			Plugselected=true
		else:
			#soltando o click
			Plugselected = false

func seguirMouse():
	position = get_global_mouse_position()

func moverPlug():
	$Plug.position = get_global_mouse_position()-Vector2(position) #-Vector2(position[0],position[1])


func _on_Plug_body_entered(body):
	if(body.name != "Lixeira" and body.portValue==""):
		pluggedPosition = body.global_position-Vector2(position)
		plugged = true
		body.setValue(value);

func _on_Plug_body_exited(body):
	if(body.name != "Lixeira"):
		#print(body.name)
		body.removeValue(plugged)
		plugged = false

