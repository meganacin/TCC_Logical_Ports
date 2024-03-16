extends Control

func _on_Menu_pressed():
	get_tree().change_scene("res://StartScreen.tscn")

func _on_next_pressed():
	$info.visible= false
	$Info1.visible = true
	$Info2.visible = true

func _on_back_pressed():
	$Info1.visible = false
	$Info2.visible = false
	$info.visible= true

func _on_next2_pressed():
	$Info1.visible = false
	$Info2.visible = false
	$Info3.visible = true

func _on_back1_pressed():
	$Info3.visible = false
	$Info1.visible = true
	$Info2.visible = true



func _on_next3_pressed():
	$Info3.visible = false
	$Info4.visible = true


func _on_back2_pressed():
	$Info4.visible = false
	$Info3.visible = true



func _on_next4_pressed():
	$Info4.visible = false
	$Info5.visible = true


func _on_back3_pressed():
	$Info5.visible = false
	$Info4.visible = true


func _on_next5_pressed():
	$Info5.visible = false
	$Info6.visible = true
	$Info6/PlugAndMove.play()


func _on_back4_pressed():
	$Info6.visible = false
	$Info5.visible = true
	$Info6/PlugAndMove.stop()


func _on_play1_pressed():
	$Info6/PlugAndMove.play()


func _on_back5_pressed():
	$Info7.visible = false
	$Info6.visible = true
	$Info6/PlugAndMove.play()


func _on_next6_pressed():
	$Info6.visible = false
	$Info7.visible = true
	$Info6/PlugAndMove.stop()


func _on_ReturnMenu_pressed():
	get_tree().change_scene("res://StartScreen.tscn")
