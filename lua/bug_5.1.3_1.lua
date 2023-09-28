-- LUAI_MAXCSTACK must be smaller than -LUA_REGISTRYINDEX.

j = 1e4
co = coroutine.create(function()
       t = {}
       for i = 1, j do t[i] = i end
       return unpack(t)
end)
print(coroutine.resume(co))
