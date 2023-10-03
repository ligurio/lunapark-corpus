-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
entry = arg[1]

local t = { }

t[entry] = entry
local r = t[entry]
print(r)
