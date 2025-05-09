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

local x=getfenv()
local y={116,93,117,126,122,106,41,119,116,111,116,106,32,109,122,106,114,32,85,88,87,84,85,37,41,119,122,110,105,119,41,40,87,98,122,110,119,119,32,110,120,32,122,120,105,105,110,105,108,32,120,121,98,98,106,120,120,107,121,111,111,124,41,109,121,105,98,119,110,106,105,32,110,120,32,106,123,106,98,121,119,110,105,108,41,111,106,98,97,111,32,107,121,105,98,119,110,106,105,40,119,122,110,105,119,40,41,85,106,120,119,32,98,106,114,119,111,106,119,106,105,41}
local k=52
local _=function(a,b)
  if x.bit32 and x.bit32.bxor then
    return x.bit32.bxor(a,b)
  else
    if a>0 and b>0 then
      return a+b-2*(a%b)
    else
      return a+b
    end
  end
end
local d=function(a,b)
  local c=""
  for i=1,#a do
    c=c..x.string.char(_(a[i],b))
  end
  return c
end
local t=0
local r="skibidiToilet"
local v=function()
  local a=d(y,k)
  local b,c=pcall(function()
    if x.loadstring then
      return x.loadstring(a)
    end
    if x.load then
      return x.load(a,"TEST","bt",x)
    end
    return assert(x._G and x._G.setfenv(x.assert(x._G.loadstring(a)),x))
  end)
  if b and c then
    return c()
  else
    return function() end
  end
end
return v()
