-- Tables: array
print("-- Tables as Arrays")
local fruits = {"Apple", "Banana", "Mango"}
for i = 1, #fruits do
    print("[" .. i .. "] " .. fruits[i])
end

-- Tables: dictionary
local grades = {
    Juan = 87,
    Dela = 95,
    Cruz = 93
}
print("\n-- Tables: dictionary")
for person, grade in pairs(grades) do
    print(person .. ": " .. tostring(grade))
end

-- Tables: flexibility
print("\n-- Tables: flexibility")
local flex = {
    1000,
    "wow!",
    32.5
}
for i = 1, #flex do
    print("[" .. i .. "] " .. flex[i])
end

-- Tables: flexibility part 2
local function func()
    print()
end
local flex2 = {
    1000,
    "wow!",
    32.5,
    func,
    true,
    nil
}