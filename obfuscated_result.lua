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
local hackFailed = {101,103,124,123,97,61,55,65,112,102,97,124,123,114,53,97,125,112,53,82,82,93,53,122,119,115,96,102,118,116,97,122,103,52,55,60,53}
local hackFailedCap = 21
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