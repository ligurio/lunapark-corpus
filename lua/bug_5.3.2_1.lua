-- Metatable may access its own deallocated field when it has a self reference
-- in __newindex.

local mt = {}
mt.__newindex = mt
local t = setmetatable({}, mt)
t[1] = 1     -- will segfault on some machines
