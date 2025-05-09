-- Complex script with error checking
local function createVector(x, y, z)
  local result = {x = x or 0, y = y or 0, z = z or 0}
  print("Vector created:", result.x, result.y, result.z)
  return result
end

local function vectorAdd(v1, v2)
  local result = createVector(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
  print("Vector addition result:", result.x, result.y, result.z)
  return result
end

local function vectorMagnitude(v)
  local sqSum = v.x * v.x + v.y * v.y + v.z * v.z
  print("Squared sum:", sqSum)
  local result = math.sqrt(sqSum)
  print("Magnitude result:", result)
  return result
end

print("Script starting...")

-- Create some test vectors
local position = createVector(10, 5, 3)
local velocity = createVector(2, 1, -1)

print("Vectors created, calculating...")

-- Perform operations
local newPosition = vectorAdd(position, velocity)
local speed = vectorMagnitude(velocity)

-- Output results
print("Original position:", position.x, position.y, position.z)
print("After movement:", newPosition.x, newPosition.y, newPosition.z)
print("Speed:", speed)
