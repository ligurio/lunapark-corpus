-- lua_setfenv may crash if called over an invalid object.

debug.setfenv(3, {})
