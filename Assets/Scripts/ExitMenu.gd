extends CanvasLayer

onready var popup = $Popup

func _ready():
	$Popup/ColorRect/VBoxContainer/Resume.connect("pressed",popup,"hide")
	#$Popup/ColorRect/VBoxContainer/LevelSelect.connect("pressed",self,"_warp")

func _warp():
	get_tree().change_scene("res://Scenes/LevelSelect.tscn")
	popup.hide()

func _physics_process(delta)->void:
	if Input.is_action_pressed("ui_cancel"):
		popup.popup()
