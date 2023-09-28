-- Wrong error message in some short-cut expressions.

a,b,c = true,true,true
(a and b or c)('', '')
--> stdin:1: attempt to call a boolean value (global 'c')
--  it should be global 'b' instead of 'c'
