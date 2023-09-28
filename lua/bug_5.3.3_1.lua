-- Expression list with four or more expressions in a 'for' loop can crash the
-- interpreter.

-- the next loop will probably crash the interpreter
repeat until load "for _ in _,_,_,_ do local function _() end"
