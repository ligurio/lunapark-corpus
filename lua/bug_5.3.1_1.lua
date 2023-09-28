-- io.lines does not check maximum number of options.

-- can crash in some machines
t ={}; for i = 1, 253 do t[i] = 1 end
io.lines("someexistingfile", table.unpack(t))()
