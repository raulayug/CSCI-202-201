local function fib(a)
    if a == 1 then
        return 0
    elseif a == 2 then
        return 1
    else
        return fib(a-1) + fib(a-2)
    end
end

while true do
    io.write("Enter a number (0 to exit): ")
    local input = tonumber(io.read())

    if input == 0 then
        break
    else
        print(fib(input))
    end
end

