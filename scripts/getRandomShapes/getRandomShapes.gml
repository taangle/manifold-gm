/// @param lower Lower shape count
/// @param upper Upper shape count

var lower = argument[0]
var upper = argument[1]

var shapes;
var shapeCount = irandom_range(lower, upper)
for (var i = shapeCount - 1; i >= 0; i--) {
	var type = global.shapeTypes[irandom(array_length_1d(global.shapeTypes) - 1)]
	var shape
	switch (type) {
		case ShapeType.RECTANGLE:
			shape = instance_create_depth(0, 0, 0, oRectangle)
	}
	shapes[i] = shape	
}

return shapes