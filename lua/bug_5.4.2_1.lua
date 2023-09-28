nan = 0/0
t = {nan, nan, 20, 10}
table.sort(t)
print(table.concat(t, ", "))
  --> -nan, 20, -nan, 10
