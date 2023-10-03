-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
--
-- An adapted example from http://lua-users.org/wiki/MetamethodsTutorial
--

local x = { value   = 5,
	    __index = function (lhs, rhs) -- "index" event handler
	                return 2,3,4
	              end }

setmetatable(x, x) -- use x itself as the metatable for "x"

local a,b,c = x[x]
print(a,b,c) --> 2,nil,nil?
