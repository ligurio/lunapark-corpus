-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard

local t = { "str",
	    42,
	    true,
	    print,
	    function (x) return x end,
	    { g = "inner" }}

local s = {}

for k,v in ipairs(t) do
   s[k] = v
end
