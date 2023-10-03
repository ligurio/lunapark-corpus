-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
f = type(function (x) return x end)
bf = type(type)
i = type(42.0)
b = type(true)
s = type("hello, world")
t = type({ x = 4})
print(f,bf,i,b,s,t)
