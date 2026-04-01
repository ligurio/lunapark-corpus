-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard

local t = {
  a = "str",
  b = 42,
  c = true,
  c = print,
  e = function (x) return x end,
  f = { g = "inner" }
}

local s = {}

for k,v in next,t,nil do
   s[k] = v
end
