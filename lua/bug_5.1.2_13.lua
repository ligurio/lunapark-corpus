-- debug.sethook/gethook may overflow the thread's stack.

a = coroutine.create(function() yield() end)
coroutine.resume(a)
debug.sethook(a)      -- may overflow the stack of 'a'
