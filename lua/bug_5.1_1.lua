-- In 16-bit machines, and/or expressions with numeric constants as the right
-- operand may result in weird values.

print(false or 0)   -- on 16-bit machines
