extends Control

const BINDING_BUTTON: PackedScene = preload("res://main_menu/settings/keybinding/binding_button.tscn")

@onready var v_box: VBoxContainer = $ScrollContainer/VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var actions: Array[StringName] = KeybindManager.get_input_actions()

	for action in actions:
		var action_button: Button = BINDING_BUTTON.instantiate()
		action_button.input_action = action
		v_box.add_child(action_button)
