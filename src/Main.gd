# Responsible for transitions between the main game screens:
# combat, game menu, and the maps
extends Node


#const combat_arena_scene = preload("res://src/combat/CombatArena.tscn")
#var scenes = {
#	"battle_scene": load("res://scenes/combat.tscn")
#}
#var scenes = {
#	"battle_scene": load("res://src/scenes/BattleScene.tscn")
#}


#onready var transition = $Overlays/TransitionColor
#onready var local_map = $level
#onready var party = $Party as Party
#onready var music_player = $MusicPlayer
#onready var game_over_interface := $GameOverInterface
#onready var gui := $GUI

#var transitioning = false
#var combat_arena: CombatArena


#func _ready():
#	QuestSystem.initialize(self, party)
#	local_map.spawn_party(party)
	#local_map.visible = true
	#local_map.connect("enemies_encountered", self, "enter_battle")
	

#func _load_scene(new_scene_key):
#	if scenes.has(new_scene_key):
#		for scene in $CurrentScene.get_children():
#			scene.queue_free()
#		var new_scene = scenes[new_scene_key].instance()
#		new_scene.connect("change_scene", self, "_load_scene")
#		$CurrentScene.add_child(new_scene)

#func battle(new_scene_key):
	
	#get_tree().change_scene("res://scenes/level/combat.tscn")
	#get_tree().change_scene("res://src/levels/BattleScene.tscn")
	
	#if scenes.has(new_scene_key):
	#for scene in $CurrentScene.get_children():
	#	scene.queue_free()
	#var new_scene = scenes["battle_scene"].instance()
	#combat_arena = combat_arena_scene.instance()
	#add_child(combat_arena)
	#new_scene.connect("change_scene", self, "_load_scene")
	#$CurrentScene.add_child(new_scene)
#	EventBus.emit_signal("combat_started")
		
#func enter_battle(formation: Formation):
	# Plays the combat transition animation and initializes the combat scene
#	if transitioning:
#		return

	#gui.hide()
#	music_player.play_battle_theme()

#	transitioning = false
	#yield(transition.fade_to_color(), "completed")

#	remove_child(local_map)
#	combat_arena = combat_arena_scene.instance()
#	add_child(combat_arena)
#	EventBus.connect("victory", self, "_on_CombatArena_player_victory")
#	EventBus.connect("game_over", self, "_on_CombatArena_game_over")
#	EventBus.connect(
#		"battle_completed", self, "_on_CombatArena_battle_completed", [combat_arena]
#	)
	#combat_arena.initialize(formation, party.get_active_members())

#	yield(transition.fade_from_color(), "completed")
#	transitioning = false

#	combat_arena.battle_start()
#	EventBus.emit_signal("combat_started")


#func _on_CombatArena_battle_completed(arena):
	# At the end of an encounter, fade the screen, remove the combat arena
	# and add the local map back
	#gui.show()

#	transitioning = true
#	yield(transition.fade_to_color(), "completed")
	#combat_arena.queue_free()

	#add_child(local_map)
#	yield(transition.fade_from_color(), "completed")
#	transitioning = false
#	music_player.stop()


#func _on_CombatArena_player_victory():
	#gui.show()
#	music_player.play_victory_fanfare()


#func _on_CombatArena_game_over() -> void:
#	transitioning = true
#	yield(transition.fade_to_color(), "completed")
#	game_over_interface.display(GameOverInterface.Reason.PARTY_DEFEATED)
#	yield(transition.fade_from_color(), "completed")
#	transitioning = false


#func _on_GameOverInterface_restart_requested():
#	game_over_interface.hide()
	#var formation = combat_arena.initial_formation
	#combat_arena.queue_free()
	#enter_battle(formation)
