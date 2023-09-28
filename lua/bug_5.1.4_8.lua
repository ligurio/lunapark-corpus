-- io.read("*n","*n") may return garbage if second read fails.

print(io.read("*n", "*n"))   --<< enter "10   hi"
--> file (0x884420)	nil
