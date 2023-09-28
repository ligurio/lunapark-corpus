-- lua_checkstack may have arithmetic overflow for large 'size'.

print(unpack({1,2,3}, 0, 2^31-3))
