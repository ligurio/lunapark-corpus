-- Return hook may not see correct values for active local variables when
-- function returns.
-- http://lua-users.org/lists/lua-l/2015-05/msg00376.html

local function func()
  local a = 10
  local b = {}
  local c = function() end
  local d = true
  local e = "string"
  local ii, name, value = 2, debug.getlocal( 1, 1 )
  while name do
    if #name == 1 then
      print( "func", name, value )
    end
    ii, name, value = ii+1, debug.getlocal( 1, ii )
  end
  print()
end

local function hook()
  if debug.getinfo( 2, "f" ).func == func then
    local i, name, value = 2, debug.getlocal( 2, 1 )
    while name do
      if #name == 1 then
        print( "HOOK", name, value )
      end
      i, name, value = i+1, debug.getlocal( 2, i )
    end
  end
end

debug.sethook( hook, "r" )
func()
debug.sethook()
