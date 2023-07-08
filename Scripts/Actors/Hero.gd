extends KinematicBody2D
var timer_wait_time=1
const UP = Vector2(0,-1)
signal Victory
signal Defeat
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
			$"Escape Menu".show()
	move_and_slide(global.hero_velocity,UP)
	global.hero_timer += delta
	if global.hero_velocity.x==0 and global.hero_velocity.y==0:
		if Input.is_action_just_pressed("ui_left") :
			global.hero_timer=0
			$Move.play()
			global.move_count += 1
			global.hero_velocity.x = -global.speed
		elif Input.is_action_just_pressed("ui_right") :
			global.hero_timer=0
			$Move.play()
			global.move_count += 1
			global.hero_velocity.x = +global.speed
		elif Input.is_action_just_pressed("ui_up") :
			global.hero_timer=0
			$Move.play()
			global.move_count += 1
			global.hero_velocity.y = -global.speed
		elif Input.is_action_just_pressed("ui_down") :
			global.hero_timer=0
			$Move.play()
			global.move_count += 1
			global.hero_velocity.y = +global.speed
	if(global.hero_timer >= timer_wait_time):
		global.hero_timer -= timer_wait_time
		global.hero_velocity.x=0
		global.hero_velocity.y=0
		$Move.stop()
func _on_Hero_Area_body_entered(body):
	if(body.name=="Enemy"):
		global.hero_velocity=Vector2.ZERO
		global.enemy_velocity=Vector2.ZERO
		if(global.c==0 or global.c==2):
			$Defeat.play()
			
			$"Defeat Menu".show()
		if(global.c==1):
			global.c=0
			$Victory.play()
		
			$"Victory Menu".show()
