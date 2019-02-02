/// @desc Initialize empty rectangle

// Can only be changed through time
x = 0
y = 0

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