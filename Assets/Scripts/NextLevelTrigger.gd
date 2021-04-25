extends Area2D

export (String) var path




func _on_NextLevelTrigger_body_entered(body: KinematicBody2D):
	if body is KinematicBody2D and body.name == 'Player':
		$CanvasLayer/ColorRect.show()
		yield(get_tree().create_timer(3),"timeout")
		get_tree().change_scene(path)
