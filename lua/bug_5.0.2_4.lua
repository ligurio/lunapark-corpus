-- rawset and rawget do not ignore extra arguments.

a = {}
rawset(a, 1, 2, 3)
print(a[1], a[2])    -- should be 2 and nil
