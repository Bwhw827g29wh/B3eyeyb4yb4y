-- Test function with parameters and return value
local function calculateDistance(pointA, pointB)
  local dx = pointB.x - pointA.x
  local dy = pointB.y - pointA.y
  return math.sqrt(dx*dx + dy*dy)
end

-- Test table creation and manipulation
local point1 = {x = 10, y = 20}
local point2 = {x = 15, y = 30}

-- Call function and display result
local distance = calculateDistance(point1, point2)
print("Distance between points:", distance)
