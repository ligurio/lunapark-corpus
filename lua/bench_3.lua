-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local class = {
  test = function() return 1 end
}

class.test()
class.test()
class.test()

local test = class.test
test()
test()
test()
