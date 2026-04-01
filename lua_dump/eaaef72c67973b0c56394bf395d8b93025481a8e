-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local a = {
	[0] = 0,
	n = 0
}

local tinsert = table.insert
local count = 1

-- Note: after each run of the code the table and count variable are restored
-- to predefined state.
-- If you don't clean them after a test, table.insert will be super slow.

tinsert(a, times)

a[times] = times

a[#a + 1] = times

a[count] = times
count = count + 1

a.n = a.n + 1
a[a.n] = times

a[0] = a[0] + 1
a[a[0]] = times
