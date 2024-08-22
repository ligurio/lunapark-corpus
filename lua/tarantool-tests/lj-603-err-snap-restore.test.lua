-- Test to demonstrate the incorrect JIT behaviour when an error
-- is raised on restoration from the snapshot.
-- See also https://github.com/LuaJIT/LuaJIT/issues/603.

local function do_test()
  local handler_is_called = false
  local recursive_f
  local function errfunc()
    xpcall(recursive_f, errfunc)
    -- Since this error is occured on snapshot restoration and can
    -- be handled by compiler itself, we shouldn't bother a user
    -- with it.
    handler_is_called = true
  end

  -- A recursive call to itself leads to trace with up-recursion.
  -- When the Lua stack can't be grown more, error is raised on
  -- restoration from the snapshot.
  recursive_f = function()
    xpcall(recursive_f, errfunc)
    errfunc = function() end
    recursive_f = function() end
  end
  recursive_f()
end

-- XXX: This is fragile. We need a specific amount of Lua stack
-- slots used to cause the error on restoration from a snapshot
-- and without error handler call according to the new behaviour.
-- Different amount of used stack slots can raise another one
-- error (`LJ_ERR_STKOV` ("stack overflow") during growing stack
-- while trying to push error message, `LJ_ERR_ERRERR` ("error in
-- error handling"), etc.).
-- Separate amount of local variables for GC64 and non-GC64 mode.
--
-- A recursive call to itself leads to trace with up-recursion.
-- When the Lua stack can't be grown more, error is raised on
-- restoration from the snapshot.
if true then
  -- luacheck: no unused
  local _, _, _, _, _
  do_test()
else
  -- luacheck: no unused
  local _, _, _, _, _, _, _, _, _, _, _, _, _
  do_test()
end
