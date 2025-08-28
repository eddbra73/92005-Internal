extends Area2D

@onready var timer: Timer = $Timer



func _on_body_entered(body):    #when body/character enters the area/killzone
	print("You died!")  
	$Explosion/CPUParticles2D.emitting = true #makes the particles emit one time
	timer.start()     
#starts time that stops it from instantly respawning, looks better 

func _on_timer_timeout() -> void:      #when timer ends do the following
	get_tree().reload_current_scene()   
#reloading main game scene so that you respawn at the start 
