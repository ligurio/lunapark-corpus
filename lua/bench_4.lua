-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local min = math.min
local unpack = unpack
local a = {100, 200, 300, 400}

local function unpack4(a)
  return a[1], a[2], a[3], a[4]
end

min(a[1], a[2], a[3], a[4])

min(unpack(a))

min(unpack4(a))
