extends Sprite
func _on_Area2D_body_entered(body):
	if(body.name=="Enemy"):
		global.c=2
		queue_free()
	if(body.name=="Hero"):
		global.c=1
		queue_free()
