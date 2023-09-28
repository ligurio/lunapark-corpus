-- gmatch iterator fails when called from a coroutine different from the one
-- that created it.

local f = string.gmatch("1 2 3 4 5", "%d+")
print(f())     --> 1
co = coroutine.wrap(f)
print(co())    --> ??? (should be 2)
