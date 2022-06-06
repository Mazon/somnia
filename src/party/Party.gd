#extends KinematicBody2D

#enum State { STOP, MOVE }

#var speed = 96 # pixels per second (32x32 tilemap)
#var velocity = Vector2()
#var state = State.MOVE

#func _ready():
#	pass # Replace with function body.

#func _physics_process(_delta):
#	if state != State.MOVE:
#		return
	
#	var direction = get_direction()
#	velocity = move_and_slide(direction * speed)
	
#	if velocity.x == 0:
#		$AnimationPlayer.play("Idle")
#	else:
#		$AnimationPlayer.play("Run")
	
#func get_direction():
#	return Vector2(
#		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
#		-1.0 if Input.is_action_just_pressed("ui_up") and is_on_floor() else 0.0
#	)
	
#func play_walk_in_animation():
#	state = State.STOP
#	$AnimationPlayer.play("DoorIn")
	
#extends KinematicBody2D
extends Node2D
class_name Party

export var PARTY_SIZE: int = 4

var inventory = Inventory.new()


func get_active_members():
	# Returns the first unlocked children until the party is filled
	var active = []
	var available = get_unlocked_characters()
	for i in range(min(len(available), PARTY_SIZE)):
		active.append(available[i])
	return active


func get_unlocked_characters() -> Array:
	# Returns all the characters that can be active in the party
	var has_unlocked = []
	for member in get_children():
		if member.visible:
			has_unlocked.append(member)
	return has_unlocked

#enum State { STOP, MOVE }

#var speed = 96 # pixels per second (32x32 tilemap)
#var velocity = Vector2()
#var state = State.MOVE

#func _ready():
#	pass # Replace with function body.

#func _physics_process(_delta):
#	if state != State.MOVE:
#		return
	
#	var direction = get_direction()
	#velocity = move_and_slide(direction * speed)
	
#	if velocity.x == 0:
#		$AnimationPlayer.play("Idle")
#	else:
#		$AnimationPlayer.play("Run")
	
#func get_direction():
	#return Vector2(
		#Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		#-1.0 if Input.is_action_just_pressed("ui_up") and is_on_floor() else 0.0
	#)

#func play_walk_in_animation():
#	state = State.STOP
#	$AnimationPlayer.play("DoorIn")
	
