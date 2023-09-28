-- Memory-allocation error when resizing a table can leave it in an
-- inconsistent state.

local a = {x = 1, y = 1, z = 1}
a[1] = 10   -- goes to the hash part (which has 4 slots)
print(a[1])   --> 10

-- assume that the 2nd memory allocation from now fails
pcall(rawset, a, 2, 20)   -- forces a rehash

-- a[1] now exists both in the array part (because the array part
-- grew) and in the hash part (because the allocation of the hash
-- part failed, keeping it as it was).
-- This makes the following traversal goes forever...
for k,v in pairs(a) do print(k,v) end
