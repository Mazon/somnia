extends MapAction
class_name StartCombatAction

export var formation: PackedScene


func _on_EncounterPawn_body_entered(new_scene_key):
	print("combat")
	get_tree().paused = false
	local_map.start_encounter(formation)
	emit_signal("finished")

	
	
#func interact() -> void:
#	get_tree().paused = false
#	local_map.start_encounter(formation)
#	emit_signal("finished")




