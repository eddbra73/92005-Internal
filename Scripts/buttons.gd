extends Control


func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/Base Game.tscn") 
#changes to main game scene when clicked

func _on_exit_pressed():       #closes/quits the game when clicked
	get_tree().quit()
