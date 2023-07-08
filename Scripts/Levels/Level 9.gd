extends Node2D
func _ready():
	global.move_left = 7
	global.lvlno=10
func _process(delta):
	if global.hero_velocity.x==0 and global.hero_velocity.y==0:
		if Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("ui_down") or Input.is_action_just_pressed("ui_up") :
			global.move_left -=1
	if (global.move_left == -1):
		$"Hero/Defeat Menu".popup()
