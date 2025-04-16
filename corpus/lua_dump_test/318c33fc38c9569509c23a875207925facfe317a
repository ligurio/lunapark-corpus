-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
x = 0 -- a global counter

-- a coroutine that can increment the counter (through side effects)
local co = coroutine.create(function (arg)
			       x = x + 1
			       arg = coroutine.yield("first")
			       x = x + 1
			       arg = coroutine.yield("second")
			       x = x + 1
			       return "I'm done"
			    end)

local b,arg = coroutine.resume(co, "resume1")
b,arg = coroutine.resume(co, "resume2")
b,arg = coroutine.resume(co, "resume3")
b,arg = coroutine.resume(co, "resume4")
