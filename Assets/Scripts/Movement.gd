extends KinematicBody2D

export var gravity = 100
export var jumpheight = 20
export var speed = 10
var input_vector = Vector2()
var velocity = Vector2()

func get_input():
	if Input.is_action_pressed("ui_right"):
		input_vector.x = 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x = -1
	if Input.is_action_pressed("ui_up") and is_on_floor():
		input_vector.y = 1

func _physics_process(delta):
	input_vector = Vector2()
	#velocity.x = velocity.x*0.07
	velocity.y = velocity.y + gravity
	get_input()
	velocity.x = input_vector.x*speed
	if input_vector.y == 1:
		velocity.y = -jumpheight
	velocity = move_and_slide(velocity,Vector2(0,-1))
