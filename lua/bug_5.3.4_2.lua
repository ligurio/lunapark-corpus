-- Lua crashes when building sequences with more than 2^30 elements.

-- too slow testcase
if true then os.exit() end

-- crashes if machine has enough memory
local t = {}
for i = 1, 0x7fffffff do
  t[i] = i
end
