local lim = 1000
local function stack (n)
  if n > 0 then return stack(n - 1) + 1
  else coroutine.wrap(function ()
         stack(lim)
       end)()
  end
end

print(xpcall(stack, function () return "ok" end, lim))
