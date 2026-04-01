extends Control

@onready var status_label: Label = $MarginContainer/Content/StatusLabel

func _ready() -> void:
	status_label.text = (
		"Bootstrap scene is active.\n"
		+ "Next targets: movement feel, power restoration, and a Moon Market blockout.\n"
		+ "Stack: Godot 4 + typed GDScript."
	)
