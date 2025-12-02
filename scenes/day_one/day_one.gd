extends Node2D

class_name DayOne

signal zero_count_incremented(total_zeroes: int)

const FILE_NAME = "dayOne.txt"
@onready var instructions := _read_instructions()
const STARTING_POSITION := 50

var current_position = STARTING_POSITION
var zero_count = 0:
	set(value):
		zero_count = value
		zero_count_incremented.emit(value)

func _ready() -> void:
	print(instructions)
	print(count_zeroes())

func _read_instructions() -> Array:
	var moves = []
	var lines = InputParser.parse_input(FILE_NAME)
	
	for line in lines:
		var direction = line.left(1)
		var amount = int(line.right(line.length() - 1))
		
		var signed_move = amount * (1 if direction == "R" else -1)
		moves.append(signed_move)
		
	return moves

func count_zeroes() -> int:
	print("WARNING: Base count_zeroes() called. Did I forget to override this?")
	return -1
