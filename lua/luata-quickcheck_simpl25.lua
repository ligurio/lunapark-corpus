-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
do
   local old_print = print
   local print = "hest"
   old_print(print)
end
print(4)
