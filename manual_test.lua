--[[
  This is a manual test script to mimic our obfuscator
]]

local code = "print('Hello, this is a test'); print('Second line')"
local env = _G
local func = loadstring(code)

if func then
  if setfenv then
    setfenv(func, env)
  end
  
  local success, result = pcall(func)
  if not success then
    print("Error:", result)
  end
else
  print("Failed to load code")
end
