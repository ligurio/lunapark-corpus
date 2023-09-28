-- run this code with some memory checker, such as valgrind
-- or gcc's option -fsanitize=address
local A = {}
A[1] = false     -- create an old anchor for an object

-- obj finalizer
local function gcf (obj)
  A[1] = obj     -- anchor object
  obj = nil      -- remove it from the stack
  collectgarbage("step", 0)   -- do a young collection
  print(getmetatable(A[1]).x)   -- metatable was collected!
end

collectgarbage()   -- make A old
local obj = {}     -- create a new object
collectgarbage("step", 0)   -- make it a survival
setmetatable(obj, {__gc = gcf})   -- create its metatable
obj = nil   -- clear object
collectgarbage("step", 0)   -- will call obj's finalizer
