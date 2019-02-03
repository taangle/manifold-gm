/// @desc Tell each shape to move and change how we want it to

time = max(0, mouse_x/2)
time = min(finalTime, time)
show_debug_message("~~time: " + string(time))

manHeight = max(0, mouse_y/2)
manHeight = min(highestMan, manHeight)
show_debug_message("~~manHeight: " + string(manHeight))


for (var i = 0; i < array_length_1d(shapes); i++) {
	moveAndChange(shapes[i], time, manHeight)
}
