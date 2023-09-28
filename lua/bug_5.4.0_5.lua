-- http://lua-users.org/lists/lua-l/2020-07/msg00054.html
-- GC after resizing stack can shrink it again.

do
function errfunc(p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27,
                 p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39,
                 p40, p41, p42, p43, p44, p45, p46, p48, p49, p50, ...) a9
'fail' end

coroutine.wrap(function()
  xpcall(test, function()
    do setmetatable({}, {
         __gc = function() if k < 2 then end end
       })
    end
  end)
  xpcall(test, errfunc) end)()
end
