-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard

local function foo(a,b)
   return a+b
end

local r1 = foo(2,4)
local r2 = foo("2","4")
