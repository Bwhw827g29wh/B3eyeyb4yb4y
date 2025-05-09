-- Simple Lua test script
local function factorial(n)
    if n <= 1 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

local function fibonacci(n)
    if n <= 1 then
        return n
    else
        return fibonacci(n - 1) + fibonacci(n - 2)
    end
end

-- Calculate and print some values
print("Factorial of 5:", factorial(5))
print("Fibonacci of 7:", fibonacci(7))

-- Create a simple table
local data = {
    name = "Test Script",
    version = 1.0,
    functions = {
        "factorial", 
        "fibonacci"
    },
    active = true
}

-- Print table contents
for key, value in pairs(data) do
    if type(value) == "table" then
        print(key .. ":")
        for i, v in ipairs(value) do
            print("  " .. i .. ": " .. v)
        end
    else
        print(key .. ": " .. tostring(value))
    end
end