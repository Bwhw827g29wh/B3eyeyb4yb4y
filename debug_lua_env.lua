print("Lua version:", _VERSION)
print("Has loadstring:", loadstring ~= nil)
print("Has load:", load ~= nil)
print("Has setfenv:", setfenv ~= nil)

local obfuscated_code = 'print("Hello from obfuscated code!")'
print("Running obfuscated code directly:")
print(obfuscated_code)

if loadstring then
  local func = loadstring(obfuscated_code)
  if func then
    print("loadstring successful, running function:")
    func()
  else
    print("loadstring failed to create function")
  end
else
  local func = load(obfuscated_code)
  if func then
    print("load successful, running function:")
    func()
  else
    print("load failed to create function")
  end
end
