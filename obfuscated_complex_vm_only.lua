--[[
  ██████╗  ██████╗ ██╗  ██╗
  ██╔════╝ ██╔════╝ ██║  ██║
  ██║  ███╗██║  ███╗███████║
  ██║   ██║██║   ██║██╔══██║
  ╚██████╔╝╚██████╔╝██║  ██║
   ╚═════╝  ╚═════╝ ╚═╝  ╚═╝
  
  Obfuscated by GGH | Anti-tamper enabled
]]


-- Bytecode for obfuscated script (encrypted)
local hackFailed = {58,58,55,67,114,100,99,55,113,98,121,116,99,126,120,121,55,96,126,99,127,55,103,118,101,118,122,114,99,114,101,100,55,118,121,115,55,101,114,99,98,101,121,55,97,118,123,98,114,55,123,120,116,118,123,55,113,98,121,116,99,126,120,121,55,116,118,123,116,98,123,118,99,114,83,126,100,99,118,121,116,114,63,103,120,126,121,99,86,59,55,103,120,126,121,99,85,62,55,55,55,123,120,116,118,123,55,115,111,55,42,55,103,120,126,121,99,85,57,111,55,58,55,103,120,126,121,99,86,57,111,55,55,55,123,120,116,118,123,55,115,110,55,42,55,103,120,126,121,99,85,57,110,55,58,55,103,120,126,121,99,86,57,110,55,55,55,101,114,99,98,101,121,55,122,118,99,127,57,100,102,101,99,63,115,111,61,115,111,55,60,55,115,110,61,115,110,62,55,114,121,115,55,55,58,58,55,67,114,100,99,55,99,118,117,123,114,55,116,101,114,118,99,126,120,121,55,118,121,115,55,122,118,121,126,103,98,123,118,99,126,120,121,55,123,120,116,118,123,55,103,120,126,121,99,38,55,42,55,108,111,55,42,55,38,39,59,55,110,55,42,55,37,39,106,55,123,120,116,118,123,55,103,120,126,121,99,37,55,42,55,108,111,55,42,55,38,34,59,55,110,55,42,55,36,39,106,55,55,58,58,55,84,118,123,123,55,113,98,121,116,99,126,120,121,55,118,121,115,55,115,126,100,103,123,118,110,55,101,114,100,98,123,99,55,123,120,116,118,123,55,115,126,100,99,118,121,116,114,55,42,55,116,118,123,116,98,123,118,99,114,83,126,100,99,118,121,116,114,63,103,120,126,121,99,38,59,55,103,120,126,121,99,37,62,55,103,101,126,121,99,63,53,83,126,100,99,118,121,116,114,55,117,114,99,96,114,114,121,55,103,120,126,121,99,100,45,53,59,55,115,126,100,99,118,121,116,114,62,55}
local hackFailedCap = 23
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