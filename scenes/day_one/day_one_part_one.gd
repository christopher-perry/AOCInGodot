extends DayOne

func count_zeroes() -> int:
	for move in instructions:
		current_position += move
		while current_position < 0 || current_position > 99:
			if current_position > 99:
				current_position -= 100
			if current_position < 0:
				current_position += 100

		if current_position == 0:
			zero_count += 1
	return zero_count
