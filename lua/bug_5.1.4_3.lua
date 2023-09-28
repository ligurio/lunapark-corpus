-- Wrong code generation for some particular boolean expressions. (see also 9)

print(((1 or false) and true) or false)   --> 1, but should be 'true'
