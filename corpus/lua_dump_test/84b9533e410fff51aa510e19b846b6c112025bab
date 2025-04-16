-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
local o = { x = 42 }
function o:get() return self.x end
function o:set(val) self.x = val end
function o:getself() return self end

o:getself():getself():getself():set("boo") -- methcallstmt
r = o:getself():getself():getself():get() -- methcall
print(r)
