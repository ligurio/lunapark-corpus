-- Some "not not" expressions may not result in boolean values.

-- should print false, but prints nil
print(not not (nil and 4))
