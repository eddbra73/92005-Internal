extends Control

func _on_button_3_pressed():
	get_tree().quit()     #closes the game



func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Base Game.tscn")   #goes to main scene
