extends Node2D

export (PackedScene) var target_button_reference = load("res://src/ui/EnemyTargetButton.tscn")



func _ready():
	pass # Replace with function body.

# targets is a Array of Vector2
func init(targets):
	for target in targets:
		var new_target_button = target_button_reference.instance()
		new_target_button.global_position = target
		EventBus.connect("target_pressed", self, "press")
		EventBus.connect("target_mouse_entered", self, "mouse_entered")
		EventBus.connect("target_mouse_exited", self, "mouse_exited")
		add_child(new_target_button)

func press():
	EventBus.emit_signal("action_pressed")

func mouse_entered():
	for child in get_children():
		child.set_hover_sprite(true)
func mouse_exited():
	for child in get_children():
		child.set_hover_sprite(false)
