-- Wrong message error in some cases involving closures.

local Var
local function main()
  NoSuchName (function() Var=0 end)
end
main()
