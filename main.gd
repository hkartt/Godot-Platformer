extends Node2D

func _ready():
	#Utils.saveGame()
	Utils.loadGame()
	$BGM.play()

func _on_quit_pressed():
	get_tree().quit()


func _on_play_pressed():
	Game.playerHP = 10
	Game.Score = 0
	Utils.saveGame()
	$BGM.stop()
	get_tree().change_scene_to_file("res://world.tscn")
	
func _on_continue_pressed():
	if not Game.playerHP <= 0:
		get_tree().change_scene_to_file("res://world.tscn")
