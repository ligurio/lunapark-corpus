-- Resuming the running coroutine makes it unyieldable.

-- should print 'true'
print(coroutine.resume(coroutine.create(function()
  coroutine.resume(coroutine.running())
  coroutine.yield()
end)))
