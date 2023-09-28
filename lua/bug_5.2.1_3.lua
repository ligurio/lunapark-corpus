-- Check for garbage collector in function calls does not cover all paths.
-- http://lua-users.org/lists/lua-l/2012-08/msg00149.html

local a = {}

local function recur (x)
  if x > 0 then return recur(x - 1) + 3
  else return 1
  end
end

local lim = tonumber(arg[1]) or 10000

for i = 1, lim do
  a[i] = coroutine.wrap(recur)
end

print(" ****  **** RUNNING")

for i = 1, lim do
  a[i](lim)
  -- io.write(collectgarbage"count" * 1024, "\n")
end
