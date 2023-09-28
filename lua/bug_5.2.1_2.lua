-- pcall may not restore previous error function when inside coroutines.

function errfunc(x)
  return 'errfunc'
end

function test(do_yield)
  print(do_yield and "yielding" or "not yielding")
  pcall(function() -- this pcall sets errfunc back to none
    if do_yield then
      coroutine.yield() -- stops errfunc from being restored
    end
  end)
  error('fail!')
end

coro = coroutine.wrap(function()
  print(xpcall(test, errfunc, false))
  print(xpcall(test, errfunc, true))
  print(xpcall(test, errfunc, false))
end)

coro()
--> not yielding
--> false	errfunc
--> yielding
coro()
--> false	temp:12: fail!       <<<< should be 'errfunc' too
--> not yielding
--> false	errfunc
