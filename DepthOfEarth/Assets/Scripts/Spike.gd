extends Area2D

onready var canvaslayer = $CanvasLayer/Label

func _on_Spike_body_entered(body):
	if body is KinematicBody2D and body.name == "Player":
		canvaslayer.show()
		body.hide()
		yield(get_tree().create_timer(2),"timeout")
		get_tree().reload_current_scene()
