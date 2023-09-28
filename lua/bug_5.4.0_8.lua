-- Field 'L->oldpc' is not always updated when returning to a function.

-- run this code under valgrind. (Error depends on details of dynamic
-- addresses.)
function foo ()
  local f = load[[io.write('+');
                  for i = 1, 10000 do local a = {}; debug.sethook(nil) end
                  io.write'-']]

  local u = setmetatable({},
    {__gc = assert(load[[debug.sethook(print, "l");
                  error('err');
                  ]])})

  u = nil
  f()
end

for i = 1, 200 do
  foo()
end
