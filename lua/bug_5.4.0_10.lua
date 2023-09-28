-- Barriers cannot be active during sweep phase, even in generational mode.

-- produces a memory access violation.
local old = {10}
collectgarbage()   -- make 'old' old
local co = coroutine.create(
  function ()
    local x = nil
    local f = function ()
                return x[1]
              end
    x = coroutine.yield(f)
    coroutine.yield()
  end
)
local _, f = coroutine.resume(co)     -- create closure over x in thread
collectgarbage("step", 0)   -- make upvalue a survival
old[1] = {"hello"}    -- 'old' go to grayagain as 'touched1'
coroutine.resume(co, {123})     -- its value will be new
co = nil
-- next minor collection hits the barrier between upvalue and its
-- conent while sweeping the thread. This will mix the lists 'gray'
-- and 'grayagain' and will remove 'old' from 'grayagain'.
collectgarbage("step", 0)
assert(f() == 123 and old[1][1] == "hello")   -- still ok
collectgarbage("step", 0)   -- run the collector once more
-- now, as 'old' was not in 'grayagain', 'old[1]' was deleted
assert(f() == 123 and old[1][1] == "hello")
