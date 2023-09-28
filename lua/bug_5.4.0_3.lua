-- must compile Lua with option -DHARDMEMTESTS, to force
-- emergency collections
local s = string.dump(function ()
  local x, y, z
  return function () return x + y + z end
end)

for i = 1, #s - 1 do
  assert(not load(string.sub(s, 1, i)))
end
