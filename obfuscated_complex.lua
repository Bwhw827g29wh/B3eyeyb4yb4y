--[[
  ⢿⣿⣿⣿⣭⠹⠛⠛⠛⢿⣿⣿⣿⣿⡿⣿⠷⠶⠿⢻⣿⣛⣦⣙⠻⣿
  ⣿⣿⢿⣿⠏⠀⠀⡀⠀⠈⣿⢛⣽⣜⠯⣽⠀⠀⠀⠀⠙⢿⣷⣻⡀⢿
  ⠐⠛⢿⣾⣖⣤⡀⠀⢀⡰⠿⢷⣶⣿⡇⠻⣖⣒⣒⣶⣿⣿⡟⢙⣶⣮
  ⣤⠀⠀⠛⠻⠗⠿⠿⣯⡆⣿⣛⣿⡿⠿⠮⡶⠼⠟⠙⠊⠁⠀⠸⢣⣿
  ⣿⣷⡀⠀⠀⠀⠀⠠⠭⣍⡉⢩⣥⡤⠥⣤⡶⣒⠀⠀⠀⠀⠀⢰⣿⣿
  ⣿⣿⡽⡄⠀⠀⠀⢿⣿⣆⣿⣧⢡⣾⣿⡇⣾⣿⡇⠀⠀⠀⠀⣿⡇⠃
  ⣿⣿⣷⣻⣆⢄⠀⠈⠉⠉⠛⠛⠘⠛⠛⠛⠙⠛⠁⠀⠀⠀⠀⣿⡇⢸
  ⢞⣿⣿⣷⣝⣷⣝⠦⡀⠀⠀⠀⠀⠀⠀⠀⡀⢀⠀⠀⠀⠀⠀⠛⣿⠈
  ⣦⡑⠛⣟⢿⡿⣿⣷⣝⢧⡀⠀⠀⣶⣸⡇⣿⢸⣧⠀⠀⠀⠀⢸⡿⡆
  ⣿⣿⣷⣮⣭⣍⡛⠻⢿⣷⠿⣶⣶⣬⣬⣁⣉⣀⣀⣁⡤⢴⣺⣾⣽⡇
  Protected by GGH | All rights reserved
  Anti-leak system enabled
]]


-- Bytecode for obfuscated script (encrypted)
local hackFailed = {63,63,50,70,119,97,102,50,116,103,124,113,102,123,125,124,50,101,123,102,122,50,98,115,96,115,127,119,102,119,96,97,50,115,124,118,50,96,119,102,103,96,124,50,100,115,126,103,119,50,126,125,113,115,126,50,116,103,124,113,102,123,125,124,50,113,115,126,113,103,126,115,102,119,86,123,97,102,115,124,113,119,58,98,125,123,124,102,83,62,50,98,125,123,124,102,80,59,50,50,50,126,125,113,115,126,50,118,106,50,47,50,98,125,123,124,102,80,60,106,50,63,50,98,125,123,124,102,83,60,106,50,50,50,126,125,113,115,126,50,118,107,50,47,50,98,125,123,124,102,80,60,107,50,63,50,98,125,123,124,102,83,60,107,50,50,50,96,119,102,103,96,124,50,127,115,102,122,60,97,99,96,102,58,118,106,56,118,106,50,57,50,118,107,56,118,107,59,50,119,124,118,50,50,63,63,50,70,119,97,102,50,102,115,112,126,119,50,113,96,119,115,102,123,125,124,50,115,124,118,50,127,115,124,123,98,103,126,115,102,123,125,124,50,126,125,113,115,126,50,98,125,123,124,102,35,50,47,50,105,106,50,47,50,35,34,62,50,107,50,47,50,32,34,111,50,126,125,113,115,126,50,98,125,123,124,102,32,50,47,50,105,106,50,47,50,35,39,62,50,107,50,47,50,33,34,111,50,50,63,63,50,81,115,126,126,50,116,103,124,113,102,123,125,124,50,115,124,118,50,118,123,97,98,126,115,107,50,96,119,97,103,126,102,50,126,125,113,115,126,50,118,123,97,102,115,124,113,119,50,47,50,113,115,126,113,103,126,115,102,119,86,123,97,102,115,124,113,119,58,98,125,123,124,102,35,62,50,98,125,123,124,102,32,59,50,98,96,123,124,102,58,48,86,123,97,102,115,124,113,119,50,112,119,102,101,119,119,124,50,98,125,123,124,102,97,40,48,62,50,118,123,97,102,115,124,113,119,59,50}
local hackFailedCap = 18
local youFailed = getfenv or function() return _G end
local wZr = true
local wannaCry = {}

-- Decoder for VM bytecode
local urmom = function(bytecode, key)
  local result = ""
  for i = 1, #bytecode do
    local b = bytecode[i]
    -- Use bit32 if available (Luau/Lua 5.2+), otherwise use bitwise compatibility approach
    if bit32 and bit32.bxor then
      result = result .. string.char(bit32.bxor(b, key))
    else
      -- Fallback XOR implementation for Lua 5.1 without bitop library
      -- This works in KRNL and other environments without bit32
      local xor = b
      if b > 0 and key > 0 then
        -- Simple XOR operation using modular arithmetic
        xor = b + key - 2 * (b % key)
        if xor > 255 then xor = b end
      end
      result = result .. string.char(xor)
    end
  end
  return result
end

-- Add fake variables that look legitimate
for i = 1, 9 do
  wannaCry[i] = math.random(1, 2000)
end

-- Executor function that runs the decoded bytecode
local C = function()
  wannaCry.init = true
  
  -- This runtime decoder only decodes the code once at execution
  -- Makes it harder to extract the original source
  local decoded = urmom(hackFailed, hackFailedCap)
  
  -- Create protected environment
  local env = youFailed()
  
  -- Execute in protected mode
  local func, err
  if loadstring then
    func, err = loadstring(decoded)
    if func and setfenv then
      setfenv(func, env)
    end
  else
    func, err = load(decoded, "GGH_Protected", "bt", env)
  end
  
  if not func then
    return nil
  end
  
  local success, result = pcall(func)
  return result
end

-- Initialize VM protection
local hackerman = function()
  -- Execute the protected code
  return C()
end

-- Run the VM
return hackerman()