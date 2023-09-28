-- file:close cannot be called without a file (results a crash).

io.stdin.close()    -- correct call should be io.stdin:close()
