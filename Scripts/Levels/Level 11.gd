extends Node2D
func _on_Home_pressed():
	get_tree().change_scene("res://GUI.tscn")
func _on_Quit_pressed():
	get_tree().quit()
