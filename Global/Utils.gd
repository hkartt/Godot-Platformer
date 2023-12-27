extends Node

#for release, should use users://
const SAVE_PATH = "res://savegame.bin"


func saveGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var data = {
		"playerHP" = Game.playerHP,
		"Score" = Game.Score
	}
	var str = JSON.stringify(data)
	file.store_line(str)
	
func loadGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if FileAccess.file_exists(SAVE_PATH) == true:
		if not file.eof_reached():
			var current_line = JSON.parse_string(file.get_line())
			if current_line:
				Game.playerHP = current_line["playerHP"]
				Game.Score = current_line["Score"]
			
