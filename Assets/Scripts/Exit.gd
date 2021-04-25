extends Area2D

export var scene_path = "res://Scenes/Test.tscn"
onready var colorrect = $CanvasLayer/ColorRect




func _on_Goal_body_entered(body: KinematicBody2D):
	if body is KinematicBody2D and body.name == "Player":
		colorrect.show()
		yield(get_tree().create_timer(2),"timeout")
		get_tree().change_scene(scene_path)
