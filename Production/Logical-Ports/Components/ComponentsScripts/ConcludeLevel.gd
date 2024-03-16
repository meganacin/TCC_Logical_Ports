extends Control


func _on_Button_pressed():
	get_tree().change_scene("res://LevelSelector.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://StartScreen.tscn")


func _on_Button3_pressed():
	if((get_tree().current_scene.name)=="Level25"):
		get_tree().change_scene("res://Components/Levels/LevelLivre.tscn")
	else:
		get_tree().change_scene("res://Components/Levels/Level"+ str(int(get_tree().current_scene.name)+1)+".tscn")
