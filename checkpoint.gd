extends StaticBody2D

var active = true
func _on_area_2d_area_entered(area):
	if active:
		if area.get_parent().is_in_group("player"):
			active = false
			$/root/World.save_game()
			$/root/World.save_game_area()
			SavedData.saved_position = $/root/World.player.position
			
