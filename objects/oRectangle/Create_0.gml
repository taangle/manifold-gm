/// @desc Initialize empty rectangle

var smallestHalf = 8
var largestHalf = 64
baseLeft = irandom_range(smallestHalf, largestHalf)
show_debug_message("~~baseLeft: " + string(baseLeft))
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
for (var time = 1; time < oScene.finalTime; time++) {
	xPositions[time] = xPositions[time - 1] + xMovement
	yPositions[time] = yPositions[time - 1] + yMovement
}

// Set up transformation array
var firstTrans = instance_create_depth(0,0,0,oRectTransformation)
firstTrans.newLeft = baseLeft
firstTrans.newRight = baseRight
firstTrans.newBottom = baseBottom
firstTrans.newTop = baseTop
firstTrans.newColor = baseColor
transformations[oScene.midMan] = firstTrans

uLeftTrans = choose(-1,0,1)
uRightTrans = choose(-1,0,1)
uTopTrans = choose(-1,0,1)
uBottomTrans = choose(-1,0,1)
uColorTrans = choose(-1,0,1)
for (var manHeight = oScene.midMan - 1; manHeight >= 0; manHeight--) {
	var transformation = instance_create_depth(0,0,0,oRectTransformation)
	transformation.newLeft = transformations[manHeight + 1].newLeft + uLeftTrans
	transformation.newRight = transformations[manHeight + 1].newRight + uRightTrans
	transformation.newBottom = transformations[manHeight + 1].newBottom + uBottomTrans
	transformation.newTop = transformations[manHeight + 1].newTop + uTopTrans
	transformation.newColor = transformations[manHeight + 1].newColor + uColorTrans
	transformations[manHeight] = transformation
}

dLeftTrans = choose(-1,0,1)
dRightTrans = choose(-1,0,1)
dTopTrans = choose(-1,0,1)
dBottomTrans = choose(-1,0,1)
dColorTrans = choose(-1,0,1)
for (var manHeight = oScene.midMan + 1; manHeight < oScene.highestMan; manHeight++) {
	var transformation = instance_create_depth(0,0,0,oRectTransformation)
	transformation.newLeft = transformations[manHeight - 1].newLeft + dLeftTrans
	transformation.newRight = transformations[manHeight - 1].newRight + dRightTrans
	transformation.newBottom = transformations[manHeight - 1].newBottom + dBottomTrans
	transformation.newTop = transformations[manHeight - 1].newTop + dTopTrans
	transformation.newColor = transformations[manHeight - 1].newColor + dColorTrans
	transformations[manHeight] = transformation
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	