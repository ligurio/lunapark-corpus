-- lua_getupvalue and lua_setupvalue do not check for index too small.

debug.getupvalue(function() end, 0)
