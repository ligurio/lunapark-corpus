-- Negation overflow in getlocal/setlocal.

print(debug.getlocal(1, 2^31))
