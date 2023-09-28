local function iter ()
  return function () return true end, 0, 0,
         setmetatable({}, {__close = print})
end

local function tail() print("tail") end

local function foo ()
  for k in iter() do return tail() end
end

foo()
