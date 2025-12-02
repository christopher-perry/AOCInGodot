# InputParser.gd
extends Node

const FILE_PATH = "res://resources/"

# Simple parser to take the text input and return an Array of Strings
func parse_input(file_name: String) -> Array:
	var path = FILE_PATH + file_name
	var lines = []
	var file = FileAccess.open(path, FileAccess.READ)
	
	if file == null:
		push_error(FileAccess.get_open_error())
		return lines

	while not file.eof_reached():
		var line = file.get_line().strip_edges()
		if not line.is_empty():
			lines.append(line)

	return lines
