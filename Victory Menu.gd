extends PopupMenu
func _ready():
	$"Next Level".grab_focus()
func _on_Home_pressed():
	get_tree().change_scene("res://GUI.tscn")
func _on_Retry_pressed():
	get_tree().reload_current_scene()
func _on_Next_Level_pressed():
	get_tree().change_scene("res://Levels/Level "+str(global.lvlno)+".tscn")
