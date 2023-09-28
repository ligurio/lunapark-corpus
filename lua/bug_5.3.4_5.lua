-- Dead keys with nil values can stay in weak tables.

-- The following chunk, under a memory checker like valgrind, produces a memory access violation.

local a = setmetatable({}, {__mode = 'kv'})

a['ABCDEFGHIJKLMNOPQRSTUVWXYZ' .. 'abcdefghijklmnopqrstuvwxyz'] = {}
a[next(a)] = nil
collectgarbage()
print(a['BCDEFGHIJKLMNOPQRSTUVWXYZ' .. 'abcdefghijklmnopqrstuvwxyz'])
