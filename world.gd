extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$BGM.play()


func _on_death_barrier_body_entered(body):
	if body.name == "Player":
		Game.playerHP = 0
