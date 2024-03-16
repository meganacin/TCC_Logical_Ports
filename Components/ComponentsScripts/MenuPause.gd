extends Control


var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused=!is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused



func _on_Button_pressed():
	self.is_paused = false

func _on_Button1_pressed():
	get_tree().change_scene("res://Levels/"+get_tree().current_scene.name+".tscn")
	self.is_paused = false

func _on_Button2_pressed():
	get_tree().change_scene("res://LevelSelector.tscn")
	self.is_paused = false

func _on_Button3_pressed():
	get_tree().change_scene("res://StartScreen.tscn")
	self.is_paused = false

func _on_Button4_pressed():
	get_tree().quit()


func _on_PauseBtn_pressed():
	self.is_paused=!is_paused



