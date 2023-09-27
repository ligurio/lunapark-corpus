-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local text = "Hello, this is an example text"
local cstring = ffi.cast("const char*", text)
local char = string.char
local sub, gsub, gmatch = string.sub, string.gsub, string.gmatch

local gsubfunc = function(s)
	local x = s
end

for i = 1, #text do
	local x = sub(text, i, i)
end

for k in gmatch(text, ".") do
    local x = k
end

gsub(text, ".", gsubfunc)

for i = 0, #text - 1 do
	local x = char(cstring[i])
end
