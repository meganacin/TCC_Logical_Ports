extends StaticBody2D

var portValue=""

func setValue(value):
	portValue = value

func removeValue(pluged):
	if pluged:
		portValue = ""


func _process(delta):
	get_node("ResultLabel").text = portValue
