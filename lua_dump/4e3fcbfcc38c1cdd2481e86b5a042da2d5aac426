-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
function foo ()
   local even = function (i)
      return odd(i-1)
   end
   local odd = function (i)
      return false
   end
   return even(10)
end

local r = foo()
print(r)
