-- Wrong assert when reporting concatenation errors (manifests only when Lua is
-- compiled in debug mode).

-- only with Lua compiled in debug mode
print({} .. 2)
