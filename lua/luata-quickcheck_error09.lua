-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
local x = 5
while x > 0 do
   local function g(i)
      break
      return i
   end
   g(x)
   x = x + 1
end
