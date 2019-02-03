/// @desc Tell each shape to move and change how we want it to

time = max(0, mouse_x)
time = min(room_width - 1, time)
show_debug_message("~~time: " + string(time))

manHeight = max(0, mouse_y)
manHeight = min(room_height - 1, manHeight)
show_debug_message("~~manHeight: " + string(manHeight))


for (var i = 0; i < array_length_1d(shapes); i++) {
	moveAndChange(shapes[i], time, manHeight)
}
