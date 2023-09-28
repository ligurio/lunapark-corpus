-- (needs test library)

-- reduce stack size
collectgarbage(); collectgarbage(); collectgarbage()

-- force a stack reallocation
local function loop (n)
  if n < 400 then loop(n + 1) end
end

local o = setmetatable({}, {__close = function () loop(0) end})

local script = [[toclose 2; settop 1; return 1]]

assert(T.testC(script, o) == script)
