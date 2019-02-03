draw_set_color(color)
draw_rectangle(x - left, y - top, x + right, y + bottom, false)
show_debug_message("rectX: " + string(x))
show_debug_message("rectY: " + string(y))
show_debug_message("~~drew rect: " + string(x - left) + "," + string(y - top) + "," 
					+ string(x + right) + "," + string(y + bottom))