extends Area2D




func _on_body_entered(body):
	get_tree().change_scene_to_file("res://scenes/win menu.tscn") 
# above changes scene to the win menu when collding with the Earth
