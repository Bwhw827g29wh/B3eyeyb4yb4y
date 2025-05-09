--[[
  GGH Obfuscator | https://discord.gg/ggh
  Script protected with skidDetected v1.3.37
  All attempts to deobfuscate will be logged
]]

-- GGH obfuscation with anti-tampering (designed for Roblox/Luau)
local y=getfenv or function()return _G end
local z={[16]=-29844,[106]=22624,[991]=25123,[8100]=-22664,[7135]=31245,[7724]=12543}
local function h(x)return z[x-4808]or 0 end
local d=function(x,k)
  if type(x)~="table"and type(x)~="string"then return""end
  if type(k)~="table"and type(k)~="string"and type(k)~="number"then return""end
  
  local b=y()["string"]["byte"]
  local s=y()["string"]["char"]
  local _=y()["table"]["concat"]
  local i=function(a,b)
    if a==0 or b==0 then return 0 end
    local r=0
    for j=0,31 do
      local x=a/2+b/2
      if x~=math.floor(x)then
        r=r+2^j
      end
      a=math.floor(a/2)
      b=math.floor(b/2)
      if a==0 and b==0 then break end
    end
    return r
  end
  
  -- Fallback for Luau
  if bit32 and bit32.bxor then i=bit32.bxor end
  if bit and bit.bxor then i=bit.bxor end
  
  local o={}
  if type(x)=="string"then
    for j=1,#x do 
      o[j]=b(x:sub(j,j))
    end
  else
    o=x
  end
  
  local p
  if type(k)=="string"then
    p={}
    for j=1,#k do 
      p[j]=b(k:sub(j,j))
    end
  elseif type(k)=="number"then
    p=k
  else
    p=k
  end

  local r={}
  for j=1,#o do
    if type(p)=="number"then
      r[j]=s(i(o[j],p))
    else
      r[j]=s(i(o[j],p[1+(j-1)%#p]))
    end
  end
  
  return _(r)
end

local x={156,156,117,17,68,110,113,117,110,62,107,80,101,113,117,122,80,113,77,117,92,68,92,68,117,71,116,95,62,113,80,98,95,110,117,89,98,62,56,89,117,71,116,95,62,113,80,98,95,117,74,68,113,219,56,110,68,65,11,56,113,80,95,74,141,62,107,80,95,74,68,144,117,117,117,80,71,117,62,107,80,95,74,68,117,207,117,192,165,165,165,117,113,77,68,95,117,117,117,117,117,107,68,113,116,107,95,117,123,255,98,117,62,56,101,117,71,107,117,71,107,123,117,117,117,68,89,110,68,117,117,117,117,117,107,68,113,116,107,95,117,123,252,80,65,117,150,117,249,117,150,117,107,56,113,80,98,123,117,117,117,68,95,65,117,68,95,65,117,117,101,107,80,95,113,141,74,68,113,219,56,110,68,65,11,56,113,80,95,74,141,168,165,165,165,165,144,144,117,101,107,80,95,113,141,123,17,77,80,110,117,110,62,107,80,101,113,117,122,56,110,117,98,59,71,116,110,62,56,113,68,65,117,122,80,113,77,117,234,234,237,117,156,117,113,77,68,117,110,113,107,98,95,74,68,110,113,117,101,107,98,113,68,62,113,98,107,123,144,117}
local k=21

-- Cross-compatibility with extra misdirection
local deadChat = {}
deadChat.__index = deadChat
setmetatable(deadChat, {
  __call = function(self, ...)
    return ...
  end
})

-- Add fake functions to confuse reverse engineers
local function skibidiToilet()
  return function() return nil end
end

local function gyattLookAtBro(x)
  if x > 100 then return x end
  return gyattLookAtBro(x + 1)
end

-- This looks like it's doing something important but it's just misdirection
local antiSkid = {
  noobHaxor = function() return math.random(1,100) end,
  checkEnv = function() 
    local t = {}
    for i=1,10 do t[i] = i^2 end
    return t
  end,
  detectExecution = function()
    local a = os.time() % 100
    return a > 50
  end
}

-- The actual execution logic hidden among fake code
local rizzFunction = y()["loadstring"] or y()["load"] 
if not rizzFunction then
  rizzFunction = function(src)
    return assert(load or loadstring)(src)
  end
end

-- More distractions
local function onGod()
  local t = {}
  for i=1,100 do t[tostring(i)] = i end
  return t
end

-- The real decoding step hidden in plain sight
local noSkill = {}
local noCap = d(x,k)
noSkill.frfr = rizzFunction(noCap)

-- Anti-tamper check (appears to do something but the condition is always true)
if #noCap > 0 and antiSkid.detectExecution() ~= nil then
  -- Actual execution
  if noSkill.frfr then 
    noSkill.frfr()
  end
else
  -- Never reached but confuses analysis
  gyattLookAtBro(1)
end