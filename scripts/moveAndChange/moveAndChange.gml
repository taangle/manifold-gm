/// @param shape
/// @param time
/// @param manHeight

var shape = argument[0]
var time = argument[1]
var manHeight = argument[2]

shape.x = shape.xPositions[time]
shape.y = shape.yPositions[time]
applyTransformation(shape.transformations[manHeight], shape)