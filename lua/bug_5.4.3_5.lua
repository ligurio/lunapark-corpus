-- (must be run in interactive mode)
-- Both prints should show the same result
debug.debug()
x = setmetatable({}, {__name="TABLE"})
print(x)
error(x)
