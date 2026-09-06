extends TextureRect

@onready var Main_reaction = $"../Main_reaction"
@onready var Reaction = $"../Reaction"

var stats = Stats.new()


func _gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			stats.pat_count += 1
			Main_reaction.visible = true
			Reaction.visible = true
			visible = false
			
			await get_tree().create_timer(1.0).timeout
			
			Main_reaction.visible = false
			Reaction.visible = false
			visible = true
			print_debug(stats.pat_count)
