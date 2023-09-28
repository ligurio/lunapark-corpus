-- http://lua-users.org/lists/lua-l/2020-07/msg00053.html
-- 'checkstackp' can run a GC step and destroy a preallocated CallInfo.

function errfunc() string.rep('mod', 512) end

function test()

  load(function()(function() printload(
    xpcall(test, function() print(xpcall(test, errfunc)) end)) end)() end)

end(function() print(xpcall(test, errfunc)) end)()
