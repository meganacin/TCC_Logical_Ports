extends Control


func _on_StartButton_pressed():
	get_tree().change_scene("res://LevelSelector.tscn")


func _on_About_pressed():
	get_tree().change_scene("res://AboutScreen.tscn")

func _on_StartButton2_pressed():
	get_tree().change_scene("res://HowToPlay.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()



