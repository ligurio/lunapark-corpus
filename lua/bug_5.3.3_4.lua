-- When a coroutine tries to resume a non-suspended coroutine, it can do some
-- mess (and break C assertions) before detecting the error.

-- with C assertions on
A = coroutine.running()
B = coroutine.create(function() coroutine.resume(A) end)
coroutine.resume(B)
-- or
A = coroutine.wrap(function() pcall(A, _) end)
A()
