extends Sprite
func _on_Area2D_body_entered(body):
	if(body.name=="Hero"):
		global.hero_timer = 0
		global.enemy_timer=0.0001
		global.hero_velocity.y = 0
		global.hero_velocity.x = global.jump_speed
	if(body.name=="Enemy"):
		global.enemy_timer = 0
		global.hero_timer=0.0001
		global.enemy_velocity.y = 0
		global.enemy_velocity.x = global.jump_speed
