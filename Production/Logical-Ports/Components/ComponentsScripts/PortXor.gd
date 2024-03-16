extends Area2D
var positionStart
var objectSelected=false
var PlugSelected = false
var plugged = false
var pluggedPosition:=Vector2(0,0)
var portValue1=""
var portValue2=""
var portValue=""
var onDeleteArea=false

func _process(delta):
	$XOR.visible = false
	$Label.text = portValue
	positionStart=position-position
	if $Line2D.get_point_count() > 2:
		$Line2D.remove_point($Line2D.get_point_count()-2)
	$Line2D.add_point(Vector2(positionStart[0]+55,positionStart[1]),-1)
	$Line2D.set_point_position(1,$Plug.position)
	portValue1 = $PortXor1.portValue
	portValue2 = $PortXor2.portValue
	if portValue1 =="" or portValue2 =="":
		plugged =false
	portValue=("("+portValue1+"⊕"+portValue2+")")
	if objectSelected:
		seguirMouse()
		$XOR.visible = true
		get_node("PortXor1/CollisionShape2D").disabled = true
		get_node("PortXor2/CollisionShape2D").disabled = true
		get_node("Plug/CollisionShape2D").disabled=true
		$PortXor1.portValue=""
		$PortXor2.portValue=""
	if PlugSelected:
		moverPlug()
	elif !PlugSelected and !plugged:
		$Plug.position = Vector2(positionStart[0]+75,positionStart[1])
	elif !PlugSelected and plugged:
		$Plug.position = pluggedPosition
	
	if (onDeleteArea and objectSelected==false):
		$".".queue_free()
	
	else:
		get_node("PortXor1/CollisionShape2D").disabled = false
		get_node("PortXor2/CollisionShape2D").disabled = false
		get_node("Plug/CollisionShape2D").disabled=false

func seguirMouse():
	position = get_global_mouse_position()+Vector2(-30,0)

func moverPlug():
	$Plug.position = get_global_mouse_position()-Vector2(position) 


func _on_PortAnd_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			objectSelected=true
		else:
			#soltando o click
			objectSelected = false


func _on_Plug_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed and (portValue1!="" and portValue2!=""):
			PlugSelected=true
			#print(portValue)
		else:
			#soltando o click
			PlugSelected = false


func _on_Plug_body_entered(body):
	if(body.name != "Lixeira" and body.portValue=="" and plugged==false):
		pluggedPosition = body.global_position-Vector2(position)
		plugged = true
		body.setValue(portValue);

func _on_Plug_body_exited(body):
	if(body.name != "Lixeira"):
		#print(body.name)
		body.removeValue(plugged)
		plugged = false


func _on_PortXor_body_entered(body):
	if(body.name == "Lixeira"):
		onDeleteArea = true
		body.openTrash("XOR")


func _on_PortXor_body_exited(body):
	if(body.name == "Lixeira"):
		onDeleteArea = false
		body.closeTrash("XOR")
