-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
local t = { }

t["str"] = "a"
t[42] = "b"
t[true] = "c"
t[print] = "d"
t[function (x) return x end] = "e"
t[{ g = "inner" }] = "f"

local k,v = next(t,nil)
print(k,v)
