/// @param transformation
/// @param shape

var transformation = argument[0]
var shape = argument[1]

if (shape.object_index == oRectangle) {
	show_debug_message("~~applying new left: " + string(transformation.newLeft))
	shape.left = transformation.newLeft
	shape.right = transformation.newRight
	shape.bottom = transformation.newBottom
	shape.top = transformation.newTop
	shape.color = transformation.newColor
}