extends DayOne

func _ready() -> void:
	pass # Replace with function body.

func count_zeroes() -> int:
	for move in instructions:
		var step_amount = move / abs(move) if move != 0 else 0
		var amount = abs(move)

		for i in range(amount):
			current_position += step_amount

			# Wrap Check
			if current_position == 100:
				current_position = 0
			elif current_position == -1:
				current_position = 99

			# Count the pass at 0
			if current_position == 0:
				zero_count += 1

	return zero_count
