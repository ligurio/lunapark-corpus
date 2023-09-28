-- luaV_settable may invalidate a reference to a table and try to reuse it.

grandparent = {}
grandparent.__newindex = function(s,_,_) print(s) end

parent = {}
parent.__newindex = parent
setmetatable(parent, grandparent)

child = setmetatable({}, parent)
child.foo = 10      --> (crash on some machines)
