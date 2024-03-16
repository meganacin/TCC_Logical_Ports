extends Area2D


func _on_Button_pressed():
	$ColorRect.visible = false
	$ColorRect2.visible = true



func _on_Button2_pressed():
	queue_free()
