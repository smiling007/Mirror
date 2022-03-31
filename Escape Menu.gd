extends PopupMenu
func _ready():
	$Retry.grab_focus()
func _on_Home_pressed():
	get_tree().change_scene("res://GUI.tscn")
func _on_Retry_pressed():
	get_tree().reload_current_scene()
func _on_Quit_pressed():
	get_tree().quit()


func _on_Instructions_pressed():
	get_tree().change_scene("res://About_Popup.tscn")
