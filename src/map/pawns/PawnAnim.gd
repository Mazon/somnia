extends Node2D

class_name PawnAnim

onready var anim = $AnimationPlayer

enum State { STOP, MOVE }

var speed = 96 # pixels per second (32x32 tilemap)
var velocity = Vector2()
var state = State.MOVE
var vel = Vector2()

func _ready():
	anim.set_current_animation('walk')
	set_process(true)

func play_walk():
	anim.play("walk")
	yield(anim, "animation_finished")


func play_bump():
	anim.play("bump")
	yield(anim, "animation_finished")


func get_current_animation_length():
	return anim.current_animation_length


func _physics_process(_delta):
	#if state != State.MOVE:
	#	return
	
	vel = Vector2() # set vel to Vector2(0, 0)
	if Input.is_key_pressed(KEY_RIGHT): # detecting right key
		vel = Vector2(speed, 0) # setting vel to desired direction
	
	if Input.is_key_pressed(KEY_LEFT): # detecting left key
		vel = Vector2(-speed, 0)
# Here would be code for KEY_UP, KEY_DOWN and KEY_LEFT
	#self.translate(vel * delta) # changing node's position
	self.translate(vel * _delta) # changing node's position
	
	if velocity.x == 0:
		$AnimationPlayer.play("walk")
	else:
		$AnimationPlayer.play("walk")
	
#func get_direction():
#	return Vector2(
#		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
#		-1.0 if Input.is_action_just_pressed("ui_up") and is_on_floor() else 0.0
#	)
	
func play_walk_in_animation():
	state = State.STOP
	$AnimationPlayer.play("walk")
