extends Sprite
func _on_Area2D_body_entered(body):
	if(body.name=="Hero"):
		$"Push".play()
		global.hero_timer = 0
		global.enemy_timer=0.0001
		global.hero_velocity.y =  global.jump_speed
		global.hero_velocity.x = 0
	if(body.name=="Enemy"):
		$"Push".play()
		global.enemy_timer = 0
		global.hero_timer=0.0001
		global.enemy_velocity.y =  global.jump_speed
		global.enemy_velocity.x = 0
