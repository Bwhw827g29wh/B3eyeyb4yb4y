-- Complex script with functions, tables, and calculations
local function createVector(x, y, z)
  return {x = x or 0, y = y or 0, z = z or 0}
end

local function vectorAdd(v1, v2)
  return createVector(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
end

local function vectorMagnitude(v)
  return math.sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
end

-- Create some test vectors
local position = createVector(10, 5, 3)
local velocity = createVector(2, 1, -1)

-- Perform operations
local newPosition = vectorAdd(position, velocity)
local speed = vectorMagnitude(velocity)

-- Output results
print("Original position:", position.x, position.y, position.z)
print("After movement:", newPosition.x, newPosition.y, newPosition.z)
print("Speed:", speed)
