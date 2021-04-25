extends KinematicBody2D

export var speed = 300
var velocity = Vector2()

func _physics_process(delta)->void:
	velocity = Vector2()
	velocity = velocity+Vector2(speed,0).rotated(rotation)
	move_and_slide(velocity)
	for i in get_slide_count():
		var col = get_slide_collision(i)
		if not col == null:
			if col.collider is TileMap:
				rotate(deg2rad(180))
				move_and_collide(Vector2(speed/5,0).rotated(rotation))
