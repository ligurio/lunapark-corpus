-- When loading a file, Lua may call the reader function again after it
-- returned end of input .

load(function () print("called"); return nil end)
--> called
--> called             (should be called only once!)
