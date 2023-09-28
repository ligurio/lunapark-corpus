-- Access to debug information in line hook of stripped function.

local function foo ()
   local a = 1
   local b = 2
   local c = 3
end

local s = load(string.dump(foo, true))
local line
debug.sethook(function (e, l) line = l end, "l"); s(); debug.sethook(nil)
print(line)
