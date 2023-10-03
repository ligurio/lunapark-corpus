-- Source: https://github.com/jmid/luata-quickcheck
-- License: BSD 2-Clause, Copyright (c) 2017, Jan Midtgaard
f = {}
f.n = 42
f["n"] = function () return 42 end
--f:n().n = 42     -- ok
--f:n()["n"] = 42  -- ok
f.n()
(f)().n = 42     -- not ok
