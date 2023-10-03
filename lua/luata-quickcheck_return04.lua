-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
function f()
   return "foo", true
end

local r1,r2 = f(),"jens"
print(r1,r2)
