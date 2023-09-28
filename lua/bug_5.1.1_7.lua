-- Assignment of nil to parameter may be optimized away.

function f (a)
  a=nil
  return a
end

print(f("test"))
