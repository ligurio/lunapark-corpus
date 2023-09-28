-- Some patterns can overflow the C stack, due to recursion.

print(string.find(string.rep("a", 2^20), string.rep(".?", 2^20)))
