-- Finalizers may call functions from a dynamic library after the library has
-- been unloaded.

local u = setmetatable({}, {__gc = function () foo() end})
local m = require 'mod'   -- 'mod' may be any dynamic library written in C
foo = m.foo     -- 'foo' may be any function from 'mod'
-- end program; it crashes
