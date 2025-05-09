local urmom=getfenv()
local getGud={192,194,217,222,196,152,146,248,213,220,220,223,156,144,199,223,194,220,212,145,146,153,144}
local skibidi_key=176
local baller=function(a,b)
  if urmom.bit32 and urmom.bit32.bxor then
    return urmom.bit32.bxor(a,b)
  else
    if(a>0 and b>0)then
      return a+b-2*(a%b)
    else
      return a+b
    end
  end
end
local baller_decode=function(a,b)
  local c=""
  for i=1,#a do
    c=c..urmom.string.char(baller(a[i],b))
  end
  return c
end
local leakFail=947
local leakFail="antiSkid"
local hackerman_exec=function()
  local a=baller_decode(getGud,skibidi_key)
  local b,c=pcall(function()
    -- Primary for Roblox/Luau environments
    if urmom.loadstring then
      return urmom.loadstring(a)
    end
    -- Secondary for other Lua environments
    if urmom.load then
      return urmom.load(a,"",nil,urmom)
    end
    -- Last resort with enhanced security
    return assert(urmom._G and urmom._G.setfenv(urmom.assert(urmom._G.loadstring(a)),urmom))
  end)
  if b and c then
    return c()
  else
    -- Silently fail rather than expose error
    return function() end
  end
end
return hackerman_exec()
