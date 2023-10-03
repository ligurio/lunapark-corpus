-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard

-- A for loop that counts from 1 to 10
local foo = ""
local min = 1;  -- The number to start at
local max = 10;  -- The number to stop at
for count = min, max do
  foo = foo .. count	-- Do something here
end
