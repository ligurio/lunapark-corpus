-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
---
--- example adopted from
--- http://stackoverflow.com/questions/325323/is-there-anyway-to-avoid-this-security-issue-in-lua
---

mt = {} 
t = {}
setmetatable(t, mt)
setmetatable(t, nil) -- this shouldn't fail
mt2 = getmetatable(t)
print(mt,mt2)
