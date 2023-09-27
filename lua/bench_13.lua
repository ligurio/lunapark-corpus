-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local a
require("table.new")
local new = table.new
local ffinew = ffi.new

local a = {}
a[1] = 1
a[2] = 2
a[3] = 3

local a = {true, true, true}
a[1] = 1
a[2] = 2
a[3] = 3

local a = new(3,0)
a[1] = 1
a[2] = 2
a[3] = 3

local a = {1, 2, 3}

local a = ffinew("int[3]", 1, 2, 3)

local a = ffinew("int[3]")
a[0] = 1
a[1] = 2
a[2] = 3
