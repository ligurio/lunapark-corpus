-- Garbage collector can trigger too many times in recursive loops.

function f() f() end
f()   -- it takes too long before a "stack overflow" error
