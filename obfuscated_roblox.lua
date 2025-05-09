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

local x={184,184,145,42,108,120,129,117,96,145,138,90,135,108,129,141,145,99,126,135,145,141,96,138,141,108,123,102,145,39,126,87,117,126,153,145,90,126,120,129,84,141,108,87,108,117,108,141,156,145,117,126,90,84,117,145,120,96,138,138,84,102,96,145,232,145,151,9,96,117,117,126,145,99,135,126,120,145,84,123,145,126,87,99,144,138,90,84,141,96,93,145,138,90,135,108,129,141,148,151,145,129,135,108,123,141,169,120,96,138,138,84,102,96,172,145,145,117,126,90,84,117,145,99,144,123,90,141,108,126,123,145,84,93,93,169,84,181,145,87,172,145,145,145,135,96,141,144,135,123,145,84,145,178,145,87,145,96,123,93,145,145,117,126,90,84,117,145,135,96,138,144,117,141,145,232,145,84,93,93,169,196,193,181,145,202,199,172,145,129,135,108,123,141,169,151,196,193,145,178,145,202,199,145,232,151,181,145,135,96,138,144,117,141,172,145}
local k=49
y()["loadstring"](d(x,k))()