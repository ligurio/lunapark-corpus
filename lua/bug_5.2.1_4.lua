-- load and loadfile return wrong result when given an environment for a binary
-- chunk with no upvalues.

f = load(string.dump(function () return 1 end), nil, "b", {})
print(type(f))   --> table	(should be function)
