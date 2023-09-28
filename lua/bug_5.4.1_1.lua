t = {}
t["no" .. "ref1"] = 1
t["no" .. "ref2"] = 2

for k, v in pairs(t) do
    t[k] = nil
    print(k, v)
    collectgarbage("collect")
end
