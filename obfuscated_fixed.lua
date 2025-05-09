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
  Obfuscated with GGH | Protected with anti-tamper system
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

local x={157,157,118,15,81,93,102,90,69,118,250,117,57,118,114,69,111,114,118,111,63,108,81,102,114,118,102,108,81,96,114,142,124,238,69,90,90,99,154,118,123,99,108,90,66,121,124,145,118,102,108,81,96,114,142,124,18,69,111,114,81,96,75,118,99,60,72,117,111,63,57,114,99,108,124,145,118,102,108,81,96,114,142,124,18,78,81,111,118,111,78,99,117,90,66,118,123,99,108,87,118,96,99,123,124,145,118}
local k=22

-- Cross-compatibility for different Lua environments
local urmom_load = y()["loadstring"] or y()["load"]
if not urmom_load then
  -- Final fallback for weird environments
  urmom_load = function(src)
    return assert(load or loadstring)(src)
  end
end

local skidDetected = d(x,k)
local hackerman = urmom_load(skidDetected)
if hackerman then
  hackerman()
end