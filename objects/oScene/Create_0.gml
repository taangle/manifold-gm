currentTime = 0;
shapes = getRandomShapes(3,8)
for (var i = 0; i < array_length_1d(shapes); i++) {
	shapes[i].x += irandom(room_width)
	shapes[i].y += irandom(room_height)
}