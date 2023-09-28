-- Recursive coroutines may overflow C stack.

a = function(a) coroutine.wrap(a)(a) end
a(a)
