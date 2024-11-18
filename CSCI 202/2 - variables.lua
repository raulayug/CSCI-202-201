-- nil
local nothing = nil
print("-- nil")
print(nothing)

-- boolean
local bool_true = true
local bool_false = false
local bool_empty
print("\n-- boolean")
print(bool_true)
print(bool_false)
print(bool_empty)

-- number
local int = 42
local float = 3.14
print("\n-- number")
print(int)
print(float)

-- string
local string = "boom"
local multiline = [[
This is a
multiline string!]]
local append = "bam"
print("\n-- string")
print(string)
print(multiline)
print(append, " boom")
print(append .. " boom")
print(string.format("int: %d, float: %.1f, string: %s", int, float, string))

-- function: Represents callable functions
local function add(a, b)
    return a + b
end
local function fact(a)
    if a == 1 then
        return 1
    end
    return fact(a-1) * a
end
print("\n-- function")
print("function (add):", add(2, 3))
print("function (fact):", fact(5))

-- userdata
-- example: io.stdout
local dummyUserData = io.stdout
print("\n-- userdata")
print("userdata:", dummyUserData)

-- thread
-- anonymous function
local co = coroutine.create(function()
    for i = 1, 3 do
        print("thread: step " .. i)
        coroutine.yield()
    end
end)
print("\n-- thread")
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)

