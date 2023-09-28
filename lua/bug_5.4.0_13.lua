-- Long string can be collected while its contents is being read when loading a
-- binary file.

-- run this code under some memory checker
local function myload (s)
  return load(function ()
    if s == "" then return nil
    else
      local c = string.sub(s, 1, 1)
      s = string.sub(s, 2)
      collectgarbage()
      return c
    end
  end)
end

local y = string.dump(function ()
  return '01234567890123456789012345678901234567890123456789'
end)
y = myload(y)
assert(y() == '01234567890123456789012345678901234567890123456789')
