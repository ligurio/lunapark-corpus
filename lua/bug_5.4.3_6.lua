-- Lua compiled in gcc with option '-fsanitize=undefined'
print(1 >> math.mininteger)

assert(1 >> math.mininteger == 0)
assert(1 >> math.maxinteger == 0)
assert(1 << math.mininteger == 0)
assert(1 << math.maxinteger == 0)
