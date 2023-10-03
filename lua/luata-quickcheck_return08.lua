-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
-- From Eric Mertens
local function f(x)
   if x > 10 then
      return 1,2
   else
      return 3
   end
end

a,b=f(0)
c=type(b)
print(c)
