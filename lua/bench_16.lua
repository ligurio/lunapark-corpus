-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local s = ""
local cstring = ffi.cast("const char*", s)
ffi.cdef([[
    size_t strlen ( const char * str );
]])
local C = ffi.C

local x = #s == 0

local x = s == ""

local x = cstring[0] == 0

local x = C.strlen(cstring) == 0
