extends Control


func _on_Next_pressed():
	$Selector1.visible=false
	$Selector2.visible=true

func _on_Back1_pressed():
	$Selector2.visible=false
	$Selector1.visible=true

func _on_Next1_pressed():
	$Selector2.visible=false
	$Selector3.visible=true

func _on_Back2_pressed():
	$Selector3.visible=false
	$Selector2.visible=true

func _on_Next2_pressed():
	$Selector3.visible=false
	$Selector4.visible=true

func _on_Back3_pressed():
	$Selector4.visible=false
	$Selector3.visible=true



func _on_Menu_pressed():
	get_tree().change_scene("res://StartScreen.tscn")


func _on_Lv1_pressed():
	get_tree().change_scene("res://Components/Levels/Level1.tscn")


func _on_Lv2_pressed():
	get_tree().change_scene("res://Components/Levels/Level2.tscn")


func _on_Lv3_pressed():
	get_tree().change_scene("res://Components/Levels/Level3.tscn")


func _on_Lv4_pressed():
	get_tree().change_scene("res://Components/Levels/Level4.tscn")


func _on_Lv5_pressed():
	get_tree().change_scene("res://Components/Levels/Level5.tscn")


func _on_Lv6_pressed():
	get_tree().change_scene("res://Components/Levels/Level6.tscn")


func _on_Lv7_pressed():
	get_tree().change_scene("res://Components/Levels/Level7.tscn")


func _on_Lv8_pressed():
	get_tree().change_scene("res://Components/Levels/Level8.tscn")


func _on_Lv9_pressed():
	get_tree().change_scene("res://Components/Levels/Level9.tscn")


func _on_Lv10_pressed():
	get_tree().change_scene("res://Components/Levels/Level10.tscn")


func _on_Lv11_pressed():
	get_tree().change_scene("res://Components/Levels/Level11.tscn")


func _on_Lv12_pressed():
	get_tree().change_scene("res://Components/Levels/Level12.tscn")


func _on_Lv13_pressed():
	get_tree().change_scene("res://Components/Levels/Level13.tscn")


func _on_Lv14_pressed():
	get_tree().change_scene("res://Components/Levels/Level14.tscn")


func _on_Lv15_pressed():
	get_tree().change_scene("res://Components/Levels/Level15.tscn")

func _on_Lv16_pressed():
	get_tree().change_scene("res://Components/Levels/Level16.tscn")

func _on_Lv17_pressed():
	get_tree().change_scene("res://Components/Levels/Level17.tscn")

func _on_Lv18_pressed():
	get_tree().change_scene("res://Components/Levels/Level18.tscn")

func _on_Lv19_pressed():
	get_tree().change_scene("res://Components/Levels/Level19.tscn")

func _on_Lv20_pressed():
	get_tree().change_scene("res://Components/Levels/Level20.tscn")

func _on_Lv21_pressed():
	get_tree().change_scene("res://Components/Levels/Level21.tscn")

func _on_Lv22_pressed():
	get_tree().change_scene("res://Components/Levels/Level22.tscn")

func _on_Lv23_pressed():
	get_tree().change_scene("res://Components/Levels/Level23.tscn")

func _on_Lv24_pressed():
	get_tree().change_scene("res://Components/Levels/Level24.tscn")

func _on_Lv25_pressed():
	get_tree().change_scene("res://Components/Levels/Level25.tscn")

func _on_LvLivre_pressed():
	get_tree().change_scene("res://Components/Levels/LevelLivre.tscn")
