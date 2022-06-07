extends MapAction
class_name StartCombatAction

export var formation: PackedScene


func _on_EncounterPawn_body_entered(new_scene_key):
	get_tree().paused = false
	local_map.start_encounter()
	EventBus.emit_signal("finished")

