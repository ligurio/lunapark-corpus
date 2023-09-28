-- C stack overflow (again).

function errfunc ()
  return 10 + xpcall(nil, errfunc)
end

coroutine.resume(coroutine.create(function() xpcall(nil, errfunc) end))
