extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_entered(area):
	print("ye")
	if area.get_parent().is_in_group("player"):
		get_parent().get_node("%ComboManager").reset_combo_tier()
		Globals.combo_score = 0
		Globals.level_score = 0
		Globals.scoreReset.emit()
