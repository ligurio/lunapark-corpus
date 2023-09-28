-- Lua does not check GC when creating error messages.

function test()
  bob.joe.larry = 23
end

-- memory will grow steadly
for i = 1, math.huge do
  pcall(test)
  if i % 100000 == 0 then
    io.write(collectgarbage'count'*1024, "\n")
  end
end
