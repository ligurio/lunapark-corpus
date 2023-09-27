-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

new = ffi.new

new("const char*[16]")
new("const char*[1024]")
new("int[16]")
new("int[1024]")

new("const char*[?]", 16)
new("const char*[?]", 1024)
new("int[?]", 16)
new("int[?]", 1024)
