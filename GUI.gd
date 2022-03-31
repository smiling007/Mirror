extends VBoxContainer
func _ready():
	$Start.grab_focus()
func _on_Start_pressed():
	get_tree().change_scene("res://Levels/Level 1.tscn")
func _on_Quit_pressed():
	get_tree().quit()
func _on_Instructions_pressed():
	$Instructions_Popup.popup()
func _on_About_pressed():
	$About_Popup.popup()
func _on_Credits_pressed():
	$Credits_Popup.popup()
