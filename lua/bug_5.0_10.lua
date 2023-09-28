-- dofile eats one return value when called without arguments.

a,b = dofile()   --< here you enter `return 1,2,3 <eof>'
print(a,b)   --> 2   3   (should be 1 and 2)
