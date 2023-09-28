-- Chunk with too many lines may crash Lua.

local s = string.rep("\n", 2^24)
print(load(function () return s end))
