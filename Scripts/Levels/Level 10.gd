extends Node2D
func _ready():
	global.lvlno=11
	global.move_left = 8
func _process(delta):
	if global.hero_velocity.x==0 and global.hero_velocity.y==0:
		if Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("ui_down") or Input.is_action_just_pressed("ui_up") :
			global.move_left -=1
	if (global.move_left == -1):
		global.move_left=0
		$"Hero/Defeat Menu".show()
