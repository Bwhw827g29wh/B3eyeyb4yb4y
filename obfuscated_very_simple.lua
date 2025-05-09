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

local hackFailed={6,6,11,120,94,91,78,89,11,88,66,70,91,71,78,11,95,78,88,95,11,91,89,66,69,95,3,9,99,78,71,71,68,11,77,89,68,70,11,108,108,99,10,9,2,11,91,89,66,69,95,3,9,120,78,72,68,69,79,11,71,66,69,78,9,2,11}
local hackFailedCap=43
local wannaCry={}
local wZr={[(function(a)pcall(function()if a~=nil then a()end end)end)]={{},true,{[(1)]={{},{}}}}}
wannaCry.__index=function()return math.random(1,999)end
setmetatable(wannaCry,wannaCry)
local s=string
local ___=getfenv or function()return _G end
local youFailed=___()
local _ = function(x,z)local q=s.char;if bit32 and(bit32).bxor then return(bit32).bxor(x,z)elseif bit and(bit).bxor then return(bit).bxor(x,z)else local r=0;for i=0,31 do local a=x/2+z/2;if a~=math.floor(a)then r=r+2^i end;x=math.floor(x/2);z=math.floor(z/2);if x*z==0 then break end end;return r end end
local __=function(a)pcall(function()if math.random()>.5 then loadstring("if(nil)then;end")()end end)return ___()end
local urmom=function(x,y)local r=""for i=1,#x do r=r..s.char(_(x[i],y))end;return r end
local C=function()local a=urmom(hackFailed,hackFailedCap)local b=youFailed;local c;if loadstring then c=loadstring(a)if c and setfenv then pcall(function()setfenv(c,b)end)end else c=load(a,"",nil,b)end;if not c then return end;local ok,res=pcall(c);if ok then return res end;return nil end
local function notARickRoll()return(os.time()>0)and function()return 1 end or function()return 0 end end
local hackerman=function()wannaCry["y"..math.random()]=function()end;local skid="noCap";local bozo="frfr";return notARickRoll()()==1 and C()or nil end
return hackerman()