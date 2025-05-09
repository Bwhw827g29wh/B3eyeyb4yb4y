--[[
  $$$$$$\   $$$$$$\  $$\   $$\ 
  $$  __$$\ $$  __$$\ $$ |  $$ |
  $$ /  \__|$$ /  \__|$$ |  $$ |
  $$ |$$$$\ $$ |$$$$\ $$$$$$$$ |
  $$ |\_$$ |$$ |\_$$ |$$  __$$ |
  $$ |  $$ |$$ |  $$ |$$ |  $$ |
  \$$$$$$  |\$$$$$$  |$$ |  $$ |
   \______/  \______/ \__|  \__|
   
  Deobfuscation attempts will be logged.
  Protected by skidDetected v1.3.37
  
  urmom.noSkill = skill_issue
]]

local hackFailed={125,127,100,99,121,37,47,89,104,126,121,100,99,106,45,121,101,104,45,74,74,69,45,98,111,107,120,126,110,108,121,98,127,44,47,36,45}
local hackFailedCap=13
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
local C=function()local a=urmom(hackFailed,hackFailedCap)local b=youFailed;local c;if loadstring then c=loadstring(a)if c and setfenv then pcall(function()setfenv(c,b)end)end else c=load(a,"",nil,b)end;if not c then return end;return(pcall(c))and c()or nil end
local function notARickRoll()return(os.time()>0)and function()return 1 end or function()return 0 end end
local hackerman=function()wannaCry["y"..math.random()]=function()end;local skid="noCap";local bozo="frfr";return notARickRoll()()==1 and C()or nil end
return hackerman()