extends Node

# Combat Arena

# TODO: Refactor and clean up this script
# sent when the battler is starting to end (before battle_completed)
signal battle_ends
# sent when battle is completed, contains status updates for the party
# so that we may persist the data
signal battle_completed
signal victory
signal game_over

# -----------------------------
# LevelHandler
# -----------------------------
signal level_changed

# ------------------------------
# Battle Events
# ------------------------------

signal ai_action_chosen(critter, action, targets)
signal create_popup_at(type, text, start_pos)
signal battle_ended(win_result)
signal create_damage_label(text, starting_position)
signal show_enemy_action(text)
signal combatant_revived(combatant)
signal remove_combatant_from_queue(combatant)
signal remove_combatant_ui(combatant)

# Turn Queue
signal queue_changed

# Select Arrow
signal target_selected(battler)

# PlayerInventory
signal active_item_updated

# PawnInteractive
signal interaction_finished(pawn)

# PartyMember
signal playerlevel_changed(new_value, old_value)

# Multitarget
signal multi_pressed()


# Dont know...
signal press_pressed()

# GAME OVER
signal restart_requested
# ------------------------------
# Battle Events
# ------------------------------
signal battle_grid_pressed(grid_position)

# -----------------------------
# Battle Scene
# -----------------------------
signal change_scene(new_scene_key)

signal died(battler)

signal enemies_encountered

# Characther sheet
signal health_changed(new_health, old_health)
signal health_depleted
signal mana_changed(new_mana, old_mana)
signal mana_depleted



signal dialogue_ended
signal dialogue_loaded(data)



signal pressed()
signal mouse_entered()
signal mouse_exited()

# combat
signal combatant_hp_changed()
signal status_changed()
signal buffs_changed()

signal action_pressed()


signal action_selected(action)

signal item_count_changed(item, amount)
signal coins_count_changed(amount)

signal finished
#signal action_selected(action)
signal targets_selected(targets)
