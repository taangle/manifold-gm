currentTime = 0;
shapes = getRandomShapes(3,8)
for (var i = 0; i < array_length_1d(shapes); i++) {
	shapes[i].x += irandom(room_width)
	shapes[i].y += irandom(room_height)
}

// should we precompute all motions and transformations here?
// maybe something like this: each x coord in room corresponds to a position,
//   and each y coord to a transformation. each shape will have its own array
//   of each of these.
// but maybe the shapes should compute these for themselves...