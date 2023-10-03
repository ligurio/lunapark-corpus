-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
local function fac (n)
   if n == 0
   then
      return 1
   else
      return n * fac(n-1)
   end
end

local r = fac(5)
