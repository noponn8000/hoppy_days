extends Area2D

func _on_JumpPad_body_entered(body):
	$AnimationPlayer.play("Boost")
	if body.has_method("boost"):
		body.boost()
