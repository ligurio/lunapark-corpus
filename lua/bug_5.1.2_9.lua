-- gsub may go wild when wrongly called without its third argument and with a
-- large subject.

x = string.rep('a', 10000) .. string.rep('b', 10000)
print(#string.gsub(x, 'b'))
