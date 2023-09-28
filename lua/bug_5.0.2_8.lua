-- On some machines, closing a "piped file" (created with io.popen) may crash
-- Lua.

f = io.popen("ls")
f:close()
