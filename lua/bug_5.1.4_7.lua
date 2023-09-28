-- string.format may get buffer as an argument when there are missing arguments
-- and format string is too long.

x = string.rep("x", 10000) .. "%d"
print(string.format(x))    -- gives wrong error message
