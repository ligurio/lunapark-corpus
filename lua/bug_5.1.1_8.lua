-- Concat metamethod converts numbers to strings.

a = {}
setmetatable(a, {__concat = function (a,b) print(type(a), type(b)) end})
a = 4 .. a
