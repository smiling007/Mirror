extends Sprite
func _on_Area2D_body_entered(body):
	global.hero_velocity=Vector2.ZERO
	global.enemy_velocity=Vector2.ZERO
	if(body.name=="Hero"):
		$Defeat.play()
		$"Defeat Menu".show()
	if(body.name=="Enemy"):
		$Victory.play()
		$"Victory Menu".show()
