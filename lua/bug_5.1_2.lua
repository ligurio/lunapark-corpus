--luaL_checkudata may produce wrong error message.

getmetatable(io.stdin).__gc()
--> bad argument #1 to '__gc' (FILE* expected, got table)
