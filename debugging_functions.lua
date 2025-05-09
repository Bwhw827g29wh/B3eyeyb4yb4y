local function inspect_lua_string(str)
  print("Inspecting Lua string:")
  print("Length:", #str)
  print("Content:")
  print(str)
  
  print("\nInspecting byte values:")
  for i = 1, #str do
    local byte = string.byte(str:sub(i, i))
    io.write(string.format("%02X ", byte))
    if i % 16 == 0 then
      io.write("\n")
    end
  end
  print("\n")
end

-- Extract the bytes array and key from obfuscated script
local function extract_from_obfuscated(filename)
  local file = io.open(filename, "r")
  if not file then 
    print("Could not open file:", filename)
    return nil, nil
  end
  
  local content = file:read("*all")
  file:close()
  
  -- Extract bytes
  local bytes_str = content:match("local%s+hackFailed%s*=%s*{([^}]+)}")
  local key_str = content:match("local%s+hackFailedCap%s*=%s*(%d+)")
  
  if not bytes_str or not key_str then
    print("Could not extract bytes or key")
    return nil, nil
  end
  
  local bytes = {}
  for num in bytes_str:gmatch("%d+") do
    table.insert(bytes, tonumber(num))
  end
  
  local key = tonumber(key_str)
  
  return bytes, key
end

-- XOR decoding function
local function xor_decode(bytes, key)
  local result = ""
  for i = 1, #bytes do
    local b = bytes[i]
    local xor = b
    if b > 0 and key > 0 then
      xor = b + key - 2 * (b % key)
      if xor > 255 then xor = b end
    else
      xor = b + key
    end
    result = result .. string.char(xor)
  end
  return result
end

-- Main function
local function inspect_obfuscated(filename)
  local bytes, key = extract_from_obfuscated(filename)
  if not bytes or not key then
    return
  end
  
  print("Found", #bytes, "bytes with key", key)
  local decoded = xor_decode(bytes, key)
  inspect_lua_string(decoded)
end

inspect_obfuscated("obfuscated_debug_simple.lua")
