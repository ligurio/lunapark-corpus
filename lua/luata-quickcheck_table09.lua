-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
t = {
   y = 45,
   z = 56 }
t.y = "z"
local x = t.y
