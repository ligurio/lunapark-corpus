-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
function foo ()
   local iter = nil
   iter = function (i)
      if (i==0)
      then return "done"
      else return iter(i-1)
      end
   end
   return iter(10)
end

local r = foo()
print(r)
r = iter
