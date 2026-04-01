-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local func1 = function(a, b, func) return func(a + b) end
local func2 = function(a) return a * 2 end

local x = func1(1, 2, function(a) return a * 2 end)

local x = func1(1, 2, func2)
