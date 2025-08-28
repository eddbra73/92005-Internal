extends Area2D




#signal for when a body, such as characterbody2D of character enters the area2D
func _on_body_entered(body: Node2D):     
	print("+1 Letter!")
	queue_free()     #makes the letter asset go away when collected
