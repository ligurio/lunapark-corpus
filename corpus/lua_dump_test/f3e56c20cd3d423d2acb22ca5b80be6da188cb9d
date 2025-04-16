-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local a = {}

for i = 1, 100 do
	a[i] = {
		x = 10
	}
end

for n = 1, 100 do
	a[n].x = a[n].x + 1
end

local a = a

for n = 1, 100 do
	local y = a[n]
	y.x = y.x + 1
end
