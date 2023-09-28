-- The final 'print' should print nothing, as the 'print' inside 'test'
-- returns nothing.
local function test()
    local x <close> = setmetatable({}, {
        __close = coroutine.yield
    })
    return print("Return")
end

local c = coroutine.wrap(test)
c()          -- runs until '__close'
print(c())   -- runs until end
