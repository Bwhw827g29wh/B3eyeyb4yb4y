--[[
  $$$$$$\   $$$$$$\  $$\   $$\ 
  $$  __$$\ $$  __$$\ $$ |  $$ |
  $$ /  \__|$$ /  \__|$$ |  $$ |
  $$ |$$$$\ $$ |$$$$\ $$$$$$$$ |
  $$ |\_$$ |$$ |\_$$ |$$  __$$ |
  $$ |  $$ |$$ |  $$ |$$ |  $$ |
  \$$$$$$  |\$$$$$$  |$$ |  $$ |
   \______/  \______/ \__|  \__|
   
  Deobfuscation attempts will be logged.
  Protected by skidDetected v1.3.37
  
  urmom.noSkill = skill_issue
]]

-- GGH Obfuscator Output - Debugging Version
local hackFailed = {14,14,1,52,86,81,70,83,1,84,74,78,81,77,70,1,85,70,84,85,1,81,83,74,79,85,9,3,41,70,77,77,80,1,71,83,80,78,1,40,40,41,2,3,10,1,81,83,74,79,85,9,3,52,70,68,80,79,69,1,77,74,79,70,3,10,1}
local hackFailedCap = 31

-- Decode function (supports multiple Lua environments)
local function xor_byte(a, b)
  -- Use native bit libraries if available
  if bit32 and bit32.bxor then
    return bit32.bxor(a, b)
  elseif bit and bit.bxor then
    return bit.bxor(a, b)
  else
    -- Pure Lua implementation
    return (a + b) % 256
  end
end

-- Decode the obfuscated bytecode
local function decode_bytes(bytes, key)
  local result = ""
  for i = 1, #bytes do
    result = result .. string.char(xor_byte(bytes[i], key))
  end
  return result
end

-- Get execution environment
local env = _G
if getfenv then
  pcall(function() env = getfenv() end)
end

-- Create and execute the function
local decoded = decode_bytes(hackFailed, hackFailedCap)
print("DEBUG: Decoded length = " .. #decoded)

local func, err
if loadstring then
  func, err = loadstring(decoded)
  if func and setfenv then
    pcall(function() setfenv(func, env) end)
  end
else
  func, err = load(decoded, "GGH_Protected", "bt", env)
end

if not func then
  print("Failed to load: " .. (err or "unknown error"))
  return
end

-- Execute the decoded function
local success, result = pcall(func)
if not success then
  print("Error executing: " .. tostring(result))
end

return result