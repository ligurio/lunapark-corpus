-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
local t = { a = "str",
	    b = 42,
	    c = true,
	    d = print,
	    e = function (x) return x end,
	    f = { g = "inner" }
}
local s = {}

local k,v = next(t,nil)

while k do
-- print(k,v)
   s[k] = v
   k,v = next(t,k)
end
