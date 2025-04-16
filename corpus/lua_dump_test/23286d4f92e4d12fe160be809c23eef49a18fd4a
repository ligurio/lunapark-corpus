-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard

local function f(t)
   return function()
       local x,y = t.x,t.y
       return x+y
   end
end

local r = f {x=1,y=2} ()
