extends Node

onready var current_level = $level_1

func _ready() -> void:
	EventBus.connect("enemies_encountered", self, "enter_battle")
	

func handle_level_changed(current_level_name: String):
	var next_level
	var next_level_name: String
	
	match current_level_name:
		"level1":
			next_level_name = "battle"
		"battle":
			next_level_name = "something"		
		_:
				return
				
	next_level = load("res://").instance()
	add_child(next_level)
	current_level.queue_free()
	current_level = next_level

func enter_battle():
	print("Here")
	var next_level

	next_level = load("res://src/levels/BattleScene.tscn").instance()
	add_child(next_level)
	current_level.queue_free()
	current_level = next_level
	EventBus.emit_signal("combat_started")
