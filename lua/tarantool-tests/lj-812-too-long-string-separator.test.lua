-- Test to check that we avoid parsing too long separators for
-- long strings.
-- See also the discussion in the
-- https://github.com/LuaJIT/LuaJIT/issues/812.

-- We can't check the string overflow itself without a really
-- large file, because the ERR_MEM error will be raised, due to
-- the string buffer reallocations during parsing.
-- Keeping such a huge file in the repo is pointless, so just
-- check that we don't parse long strings after some separator
-- length.
-- Be aware that this limit is different for Lua 5.1.

-- Use the hardcoded limit. The same as in the <src/lj_lex.c>.
local separator = string.rep('=', 0x20000000 + 1)
local test_str = ('return [%s[]%s]'):format(separator, separator)

loadstring(test_str, 'empty_str_f')
