-- unpack with maximum indices may crash due to arithmetic overflow.

print(unpack({1,2,3}, 2^31-1, 2^31-1))
