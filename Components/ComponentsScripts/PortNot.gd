extends StaticBody2D
var positionStart
var PlugSelected = false
var pluggedPosition:=Vector2(0,0)
var plugged = false
var objectSelected=false
var portValue=""
var onDeleteArea=false

func _process(delta):
	$NOT.visible=false
	$Label.text = portValue
	positionStart=position-position
	if $Line2D.get_point_count() > 2:
		$Line2D.remove_point($Line2D.get_point_count()-2)
	$Line2D.add_point(Vector2(positionStart[0]+55,positionStart[1]),-1)
	$Line2D.set_point_position(1,$Plug.position)
	if objectSelected:
		position = get_global_mouse_position()+Vector2(-30,0)
		$NOT.visible=true
		get_node("CollisionShape2D").disabled = true
		get_node("Plug/CollisionShape2D").disabled=true
		portValue=""
	if PlugSelected:
		moverPlug()
	elif !PlugSelected and !plugged:
		$Plug.position = Vector2(positionStart[0]+75,positionStart[1])
	elif !PlugSelected and plugged:
		$Plug.position = pluggedPosition
	if (onDeleteArea and objectSelected==false):
		$".".queue_free()
	else:
		get_node("CollisionShape2D").disabled = false
		get_node("Plug/CollisionShape2D").disabled=false

func moverPlug():
	$Plug.position = get_global_mouse_position()-Vector2(position) #-Vector2(position[0],position[1])


func _on_Plug_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT :
		if event.pressed and portValue!="":
			#print(portValue)
			PlugSelected=true
		else:
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


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			objectSelected= true
		else:
			objectSelected = false

func setValue(value):
	if !objectSelected:
		if value.ends_with("'"):
			portValue = value.substr(0,value.length()-1)
		else:
			portValue = value
			portValue+="'"

func removeValue(pluged):
	if pluged:
		portValue = ""

func _on_Area2D_body_entered(body):
	if(body.name == "Lixeira"):
		onDeleteArea = true
		body.openTrash("NOT")



func _on_Area2D_body_exited(body):
	if(body.name == "Lixeira"):
		onDeleteArea = false
		body.closeTrash("NOT")
