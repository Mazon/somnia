# Initializes the map's pawns and emits signals so the
# Game node can start encounters
# Processes in pause mode
extends Node
class_name LocalMap

#onready var dialogue_box = $MapInterface/DialogueBox
#onready var grid = $GameBoard

func _ready() -> void:
	for action in get_tree().get_nodes_in_group("map_action"):
			(action as MapAction).initialize(self)

func start_encounter() -> void:
	print("heelo")
	EventBus.emit_signal("enemies_encountered")

