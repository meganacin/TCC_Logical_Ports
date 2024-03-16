extends Control

func _on_Menu_pressed():
	get_tree().change_scene("res://StartScreen.tscn")



func _on_NOT_pressed():
	get_tree().change_scene("res://Components/AboutPortNot.tscn")


func _on_AND_pressed():
	get_tree().change_scene("res://Components/AboutPortAnd.tscn")


func _on_OR_pressed():
	get_tree().change_scene("res://Components/AboutPortOr.tscn")


func _on_XOR_pressed():
	get_tree().change_scene("res://Components/AboutPortXor.tscn")
