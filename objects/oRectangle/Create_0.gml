/// @desc Initialize empty rectangle

var smallestHalf = 8
var largestHalf = 64
baseLeft = irandom_range(smallestHalf, largestHalf)
baseRight = irandom_range(smallestHalf, largestHalf)
baseTop = irandom_range(smallestHalf, largestHalf)
baseBottom = irandom_range(smallestHalf, largestHalf)
left = baseLeft
right = baseRight
top = baseTop
bottom = baseBottom

baseColor = choose(c_aqua, c_blue, c_green, c_red)
color = baseColor

// Set up position arrays
xPositions[0] = x
yPositions[0] = y

xMovement = choose(-1,0,1)
yMovement = choose(-1,0,1)
for (var xPos = 1; xPos < room_width; xPos++) {
	xPositions[xPos] = xPositions[xPos - 1] + xMovement
	yPositions[xPos] = yPositions[xPos - 1] + yMovement
}

// Set up transformation array
var firstTrans = instance_create_depth(0,0,0,oRectTransformation)
firstTrans.newLeft = baseLeft
firstTrans.newRight = baseRight
firstTrans.newBottom = baseBottom
firstTrans.newTop = baseTop
firstTrans.newColor = baseColor
transformations[room_height/2] = firstTrans

uLeftTrans = choose(-1,0,1)
uRightTrans = choose(-1,0,1)
uTopTrans = choose(-1,0,1)
uBottomTrans = choose(-1,0,1)
uColorTrans = choose(-1,0,1)
for (var yPos = (room_height/2) - 1; yPos >= 0; yPos--) {
	var transformation = instance_create_depth(0,0,0,oRectTransformation)
	transformation.newLeft = transformations[yPos + 1] + uLeftTrans
	transformation.newRight = transformations[yPos + 1] + uRightTrans
	transformation.newBottom = transformations[yPos + 1] + uBottomTrans
	transformation.newTop = transformations[yPos + 1] + uTopTrans
	transformation.newColor = transformations[yPos + 1] + uColorTrans
	transformations[yPos] = transformation
}

dLeftTrans = choose(-1,0,1)
dRightTrans = choose(-1,0,1)
dTopTrans = choose(-1,0,1)
dBottomTrans = choose(-1,0,1)
dColorTrans = choose(-1,0,1)
for (var yPos = (room_height/2) + 1; yPos < room_height; yPos++) {
	var transformation = instance_create_depth(0,0,0,oRectTransformation)
	transformation.newLeft = transformations[yPos + 1] + dLeftTrans
	transformation.newRight = transformations[yPos + 1] + dRightTrans
	transformation.newBottom = transformations[yPos + 1] + dBottomTrans
	transformation.newTop = transformations[yPos + 1] + dTopTrans
	transformation.newColor = transformations[yPos + 1] + dColorTrans
	transformations[yPos] = transformation
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	