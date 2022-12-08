extends Node2D
class_name WorldManager

@export_file("*.txt") var CONFIG: String

var levels: Array[ConfigLevel] = []


func _ready():
	var config_file = FileAccess.open(CONFIG, FileAccess.READ)
	var lines = parse_input(config_file)
	config_file = null
	
	while lines.any():
		read_in_level(lines)


func parse_input(config_file: FileAccess):
	var lines = []
	
	while not config_file.eof_reached():
		var line = config_file.get_line()
		if line.begins_with("#") or line == "":
			continue
			
		lines.append(line)
	
	return lines
	
	
func read_in_level(lines: Array[String]):
	var line = lines.pop_front()
	if line != "Level:":
		return


func get_next_level():
	print("Not Implemented")
