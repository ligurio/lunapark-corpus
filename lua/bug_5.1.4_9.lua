-- Wrong code generation for some particular boolean expressions.

print((('hi' or true) and true) or true)
--> hi     (should be true)
print(((nil and nil) or false) and true)
--> nil    (should be false)
