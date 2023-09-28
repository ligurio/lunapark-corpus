-- Joining an upvalue with itself can cause a use-after-free crash.

-- the next code may crash the machine
f=load(function() end)
interesting={}
interesting[0]=string.rep("A",512)
debug.upvaluejoin(f,1,f,1)
