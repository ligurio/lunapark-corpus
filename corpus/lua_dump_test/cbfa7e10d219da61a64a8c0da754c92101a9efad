-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
foo = {}

function f(t)
   foo = 42
   return function()
	    foo = "hello"
	    return t.x+t.y
          end
end

f {x=1,y=2} ()
local r = foo
