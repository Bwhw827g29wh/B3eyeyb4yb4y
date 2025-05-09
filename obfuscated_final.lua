--[[
  GGH Obfuscator - https://discord.gg/ggh
  Obfuscated with skidDetected - local deadGame = c(urmom, y, Z, h, J(hackerman), noFlames K, c + deadGame)
  All attempts to crack will be logged
]]

local hackFailed={93,93,80,131,165,160,149,162,80,163,153,157,160,156,149,80,164,149,163,164,80,160,162,153,158,164,88,82,120,149,156,156,159,80,150,162,159,157,80,119,119,120,81,82,89,80,160,162,153,158,164,88,82,131,149,147,159,158,148,80,156,153,158,149,82,89,80}
local hackFailedCap=48
local wannaCry={}
local wZr=true
wannaCry.__index=function()return math.random(1,100)end
setmetatable(wannaCry,wannaCry)

-- Simple decoding function with reliable results
local urmom=function(bytes,key)
  local result=""
  for i=1,#bytes do
    local b=bytes[i]
    local decoded=(b-key)%256
    result=result..string.char(decoded)
  end
  return result
end

-- Get environment
local youFailed=_G
if getfenv then pcall(function()youFailed=getfenv()end) end

-- Execute function with output
local C=function()
  -- Decode the bytecode
  local decoded=urmom(hackFailed,hackFailedCap)
  
  -- Load the function
  local func
  if loadstring then
    func=loadstring(decoded)
    if func and setfenv then 
      pcall(function()setfenv(func,youFailed)end)
    end
  else
    func=load(decoded,"GGH_Protected","bt",youFailed)
  end
  
  -- Execute safely and return result
  if func then 
    return func()
  end
end

-- Run with extra obfuscation layers
function hackerman()
  wannaCry.noSkill = math.random() -- Fake property
  return C() -- Return the result
end

-- Execute and capture output
hackerman()