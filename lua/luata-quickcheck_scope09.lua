-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
local function run(runs)
   local function iter(i)
      if i <= 0
      then print('done')
      else
	 print('going')
	 iter(i-1)
      end
   end
   iter(runs)
end

local r = run(5)
print(r)
