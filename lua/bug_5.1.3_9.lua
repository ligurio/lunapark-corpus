-- string.byte gets confused with some out-of-range negative indices.

print(string.byte("abc", -5))   --> 97   98   99   (should print nothing)
