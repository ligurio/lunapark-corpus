### Seed corpus

The repository contains seed corpus and dictionaries for Lua
fuzzing tests.

### Merge corpuses

```sh
build/tests/capi/luaL_loadbuffer_proto/luaL_loadbuffer_proto_test -set_cover_merge=1 CORPUS NEW_CORPUS
build/tests/capi/luaL_loadbuffer_proto/luaL_loadbuffer_proto_test -merge=1 CORPUS NEW_CORPUS
```

### Maintenance

To prevent repository bloat:

```sh
git rev-list --disk-usage --objects --all
git reset --soft HEAD~2000 && git commit -m "Corpus squash"
git prune --progress
git gc
```

Validate Lua syntax in samples:

```sh
find lua/ -name '*.lua' -print0 | xargs --null -i lua {}
find lua/ -name '*.lua' -print0 | xargs --null -i luajit {}
```

#### TODO

- добавить названия бенчмарков
- добавить комменты для багов
- сниппеты из книжки CERN
- Tarantool's regression testsuite, https://github.com/tarantool/tarantool/tree/master/test
- luajit-tests, https://github.com/tarantool/luajit/tree/tarantool/master/test/LuaJIT-tests
- lua-Harness-tests, https://github.com/tarantool/luajit/tree/tarantool/master/test/lua-Harness-tests
- tarantool-tests, https://github.com/tarantool/luajit/tree/tarantool/master/test/tarantool-tests
- https://github.com/facebookresearch/CParser
- https://github.com/intxparts/LuaModules
- https://github.com/safeteeWow/LibDeflate
- https://github.com/somesocks/lua-lockbox
- https://luarocks.org/modules/mpeterv/sha1
- https://www.zash.se/lua-cbor.html
- https://github.com/tst2005/lua-utf8string
- https://github.com/justincormack/ljsyscall
- https://github.com/Wiladams/LJIT2libc
- https://github.com/luafun/luafun
- https://springrts.com/wiki/Lua_Performance
