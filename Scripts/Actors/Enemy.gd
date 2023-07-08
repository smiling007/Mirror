extends KinematicBody2D
var timer_wait_time=1
const UP = Vector2(0,-1)
func _process(delta):
	move_and_slide(global.enemy_velocity,UP)
	global.enemy_timer += delta
	if (global.enemy_velocity.x==0 and global.enemy_velocity.y==0):
		if Input.is_action_just_pressed("ui_left") :
			global.enemy_timer=0
			global.enemy_velocity.x = global.speed
		elif Input.is_action_just_pressed("ui_right") :
			global.enemy_timer=0
			global.enemy_velocity.x = -global.speed 
		elif Input.is_action_just_pressed("ui_up") :
			global.enemy_timer=0
			global.enemy_velocity.y = -global.speed
		elif Input.is_action_just_pressed("ui_down") :
			global.enemy_timer=0
			global.enemy_velocity.y = +global.speed
	if(global.enemy_timer >= timer_wait_time):
		global.enemy_timer -= timer_wait_time
		global.enemy_velocity.x=0
		global.enemy_velocity.y=0
