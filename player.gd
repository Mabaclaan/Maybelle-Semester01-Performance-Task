extends Area2D

var speed = 400
var velocity

@onready var bg_music = $"../../bg_music"
@onready var enemy_hit = $"../../enemy_hit"

func _ready():
	pass # Replace with function body.


func _process(delta):
	
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_left"):
		velocity.x = -1
	if Input.is_action_pressed("move_right"):
		velocity.x = 1
	if Input.is_action_pressed("move_up"):
		velocity.y = -1
	if Input.is_action_pressed("move_down"):
		velocity.y = 1
	
	velocity.normalized()

func _on_body_entered(body):
	hide()
	bg_music.stop()
	enemy_hit.play()
	
