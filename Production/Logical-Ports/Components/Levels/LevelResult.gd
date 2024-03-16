extends Node2D

var port_NOT = preload("res://Components/PortNot.tscn")
var port_AND = preload("res://Components/PortAnd.tscn")
var port_OR = preload("res://Components/PortOR.tscn")
var port_XOR = preload("res://Components/PortXOR.tscn")


func _process(delta):
	
	$SolutionContainer/AtualLevel.text = str(int(get_tree().current_scene.name))
	if(get_node("endPoint/ResultLabel").text == get_node("SolutionContainer/S/SExpected").text ):
		#Seta como verde caso correto
		get_node("SolutionContainer/S").add_color_override("font_color", Color(0,1,0,1))
		get_node("SolutionContainer/S/SExpected").add_color_override("font_color", Color(0,1,0,1))
		get_node("ConcludeLevel").visible = true
	
	elif(get_node("endPoint/ResultLabel").text == ""):
		#seta como branco caso vazio
		get_node("SolutionContainer/S").add_color_override("font_color", Color(1,1,1,1))
		get_node("SolutionContainer/S/SExpected").add_color_override("font_color", Color(1,1,1,1))
		get_node("SolutionContainer/ErrorMessage").visible=false
	
	elif(get_node("endPoint/ResultLabel").text != get_node("SolutionContainer/S/SExpected").text ):
		#Seta como vermelhor caso errado
		get_node("SolutionContainer/S").add_color_override("font_color", Color(1,0,0,1))
		get_node("SolutionContainer/S/SExpected").add_color_override("font_color", Color(1,0,0,1))
		get_node("SolutionContainer/ErrorMessage").visible=true



func _on_SpawnNotBtn_pressed():
	var cont =get_node("SpawnPainel/HBoxContainer/DeletePortControl/ColorRect/Lixeira").notCont
	if(cont > 0):
		var newNot = port_NOT.instance()
		newNot.position = Vector2(30,150)
		#print("Not position:",newNot.position)
		add_child(newNot)
		get_node("SpawnPainel/HBoxContainer/DeletePortControl/ColorRect/Lixeira").notCont -=1


func _on_SpawnAndBtn_pressed():
	var cont =get_node("SpawnPainel/HBoxContainer/DeletePortControl/ColorRect/Lixeira").andCont
	if(cont > 0):
		var newAnd = port_AND.instance()
		newAnd.position = Vector2(160,150)
		#print("And position:",newAnd.position) 
		add_child(newAnd)
		get_node("SpawnPainel/HBoxContainer/DeletePortControl/ColorRect/Lixeira").andCont -=1


func _on_SpawnOrBtn_pressed():
	var cont = get_node("SpawnPainel/HBoxContainer/DeletePortControl/ColorRect/Lixeira").orCont
	if(cont > 0):
		var newOr = port_OR.instance()
		newOr.position = Vector2(300,150)
		#print("And position:",newOr.position) 
		add_child(newOr)
		get_node("SpawnPainel/HBoxContainer/DeletePortControl/ColorRect/Lixeira").orCont -=1

func _on_SpawnXorBtn_pressed():
	var cont =get_node("SpawnPainel/HBoxContainer/DeletePortControl/ColorRect/Lixeira").xorCont
	if( cont > 0):
		var newXor = port_XOR.instance()
		newXor.position = Vector2(430,150)
		#print("And position:",newXor.position) 
		add_child(newXor)
		get_node("SpawnPainel/HBoxContainer/DeletePortControl/ColorRect/Lixeira").xorCont -=1

