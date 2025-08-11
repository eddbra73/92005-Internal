extends CharacterBody2D

@export var speed = 450      #setting speed of the main player

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")    
	#above is getting the direction to move the character from my inputs in the input map
	velocity = input_direction * speed    #calculating velocity with the right direction and speed


func _physics_process(delta):
	get_input()       
	move_and_slide() 

@export var respawn_position: Vector2

func _ready():
	respawn_position = global_position
  

func _on_DeadlyDetector_body_entered(body): 
	if body == self:
		respawn() 


func respawn(): 
	global_position = respawn_position
	velocity = Vector2.ZERO
