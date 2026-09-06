extends Button

@onready var button_stats = $"../stats_button"

func _on_button_stats_pressed():
	print_debug("button gedrückt")
	get_tree().change_scene_to_file("res://Scnenes/stats.tscn")
