-- The following code illustrates the problem. If finalizer 3 calls
-- a function from a dynamically loaded C module, the C module
-- will be closed by the time the function is called, generating
-- a seg. fault.

-- should be called last
print("creating 1")
setmetatable({}, {__gc = function () print(1) end})

print("creating 2")
setmetatable({}, {__gc = function ()
  print("2")
  print("creating 3")
  setmetatable({}, {__gc = function () print(3) end})
  os.exit(1, true)
end})
