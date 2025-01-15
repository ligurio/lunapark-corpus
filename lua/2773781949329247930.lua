local DEFAULT_NUMBER = 1

local always_number = function(val)
    return tonumber(val) or DEFAULT_NUMBER
end

local not_nan_and_nil = function(val)
    return (val ~= val or val == nil) and DEFAULT_NUMBER or val
end

local __add = function(v1, v2)
    return always_number(v1) + always_number(v2)
end
local __call = function(self)
    return self
end
local __concat = function(v1, v2)
    return tostring(v1) .. tostring(v2)
end
local __div = function(v1, v2)
    return always_number(v1) / always_number(v2)
end
local __index = function(self, key)
    if type(self) == 'table' then
        return rawget(self, key)
    end
    return always_number(key)
end
local __le = function(v1, v2)
    if type(v1) == 'number' and type(v2) == 'number' then
        return v1 <= v2 -- Numeric comparison.
    elseif type(v1) == 'string' and type(v2) == 'string' then
        return v1 <= v2 -- Lexicographic comparison.
    else
        return always_number(v1) <= always_number(v2)
    end
end
local __len = function(_v)
    return DEFAULT_NUMBER
end
local __lt = function(v1, v2)
    if type(v1) == 'number' and type(v2) == 'number' then
        return v1 < v2 -- Numeric comparison.
    elseif type(v1) == 'string' and type(v2) == 'string' then
        return v1 < v2 -- Lexicographic comparison.
    else
        return always_number(v1) < always_number(v2)
    end
end
local __mod = function(v1, v2)
    return always_number(v1) % always_number(v2)
end
local __mul = function(v1, v2)
    return always_number(v1) * always_number(v2)
end
local __newindex = function(self, key, value)
    if type(self) == 'table' then
        if key ~= key or key == nil then
            key = tostring(key)
        end
        rawset(self, key, value)
    end
end
local __pow = function(v1, v2)
    return always_number(v1) ^ always_number(v2)
end
local __sub = function(v1, v2)
    return always_number(v1) - always_number(v2)
end
local __unm = function(v)
    return - always_number(v)
end

debug.setmetatable('string', {
    __add = __add,
    __call = __call,
    __div = __div,
    __index = __index,
    __mod = __mod,
    __mul = __mul,
    __newindex = __newindex,
    __pow = __pow,
    __sub = __sub,
    __unm = __unm,
})
debug.setmetatable(0, {
    __add = __add,
    __call = __call,
    __concat = __concat,
    __div = __div,
    __index = __index,
    __len = __len,
    __newindex = __newindex,
})
debug.setmetatable(nil, {
    __add = __add,
    __call = __call,
    __concat = __concat,
    __div = __div,
    __index = __index,
    __le = __le,
    __len = __len,
    __lt = __lt,
    __mod = __mod,
    __mul = __mul,
    __newindex = __newindex,
    __pow = __pow,
    __sub = __sub,
    __unm = __unm,
})
debug.setmetatable(function() end, {
    __add = __add,
    __concat = __concat,
    __div = __div,
    __index = __index,
    __le = __le,
    __len = __len,
    __lt = __lt,
    __mod = __mod,
    __mul = __mul,
    __newindex = __newindex,
    __pow = __pow,
    __sub = __sub,
    __unm = __unm,
})
debug.setmetatable(true, {
    __add = __add,
    __call = __call,
    __concat = __concat,
    __div = __div,
    __index = __index,
    __le = __le,
    __len = __len,
    __lt = __lt,
    __mod = __mod,
    __mul = __mul,
    __newindex = __newindex,
    __pow = __pow,
    __sub = __sub,
    __unm = __unm,
})
local table_mt = {
    __add = __add,
    __call = __call,
    __concat = __concat,
    __div = __div,
    __le = __le,
    __len = __len,
    __lt = __lt,
    __mod = __mod,
    __mul = __mul,
    __newindex = __newindex,
    __pow = __pow,
    __sub = __sub,
    __unm = __unm,
}

local only_numbers_cmp = function(v1, v2, cmp_op_str)
    local op_func = {
        ['<'] = function(a1, a2) return a1 < a2 end,
        ['<='] = function(a1, a2) return a1 <= a2 end,
        ['>'] = function(a1, a2) return a1 > a2 end,
        ['>='] = function(a1, a2) return a1 >= a2 end,
    }
    if type(v1) == 'number' and
       type(v2) == 'number' then
        return op_func[cmp_op_str](v1, v2)
    end
    return false
end

---------------------- END OF PREAMBLE ----------------------------
counter_0 = 0
counter_1 = 0
counter_2 = 0
counter_3 = 0
counter_4 = 0
counter_5 = 0
counter_6 = 0
counter_7 = 0
counter_8 = 0
counter_9 = 0
Name0 = 'Name', 'Name', 0.000000, 'Name', nil, 'Name', -0.763604, 0.000000 ; 
Name0 = 'Name', nil, 'Name', 'Name', function (  )
	if counter_0 > 5 then return end
counter_0 = counter_0 + 1
Name0 = 'Name', false, 'Name', 'Name', 0.000000, 'Name', -0.763604, 'Name' ; 
Name0 = 'Name', 163.448899, 'Name', 'Name', function (  )
	if counter_1 > 5 then return end
counter_1 = counter_1 + 1
Name0 = 'Name' ; 
Name0 = 163.449388, 163.449388, nil, true, 163.449388, 'Name', 163.449388, 'Name', 'Name' ; 
z = 'Name', 'Name', 'Name', function ( Name0 )
	if counter_2 > 5 then return end
counter_2 = counter_2 + 1
Name0 = 'Name' ; 
Name0 = 'Name', 163.449385, 'Name', 'Name', -0.763604, nil, -0.763604, 'Name' ; 
Name0 = false, 'Name', 'Name', nil, 'Name', 'Name', false, 'Name' ; 
end
, 0.000000, -0.005722, 'Name' ; 
end
, 'Name', -0.763604, 'Name' ; 
Name0 = 'Name', 163.449388, 'Name', 'Name', function (  )
	if counter_3 > 5 then return end
counter_3 = counter_3 + 1
Name0 = 'Name', 'Name', 'Name', 'Name', nil, 'Name', -0.763604, 0.000000 ; 
Name0 = 'Name', nil, 'Name', 'Name', function (  )
	if counter_4 > 5 then return end
counter_4 = counter_4 + 1
Name0 = 'Name', false, 'Name', 'Name', 'Name', 'Name', -0.763604, 'Name' ; 
Name0 = 'Name', 1000.000000, 'Name', 'Name', function (  )
	if counter_5 > 5 then return end
counter_5 = counter_5 + 1
Name0 = 'Name' ; 
Name0 = 'Name' ; 
Name0 = 'Name', 163.449388, 'Name', 'Name', function (  )
	if counter_6 > 5 then return end
counter_6 = counter_6 + 1
Name0 = 'Name' ; 
Name0 = 'Name', 'Name', 'Name', 'Name', 0.000000, 163.449388, -0.763604, 'Name' ; 
Name0 = 'Name', 'Name', 'Name', false, 'Name', 'Name', 163.449386, false, nil ; 
end
, 0.000000, true, 'Name' ; 
end
, 'Name', -0.763604, 'Name' ; 
Name0 = 'Name', 163.449388, 'Name', 'Name', function (  )
	if counter_7 > 5 then return end
counter_7 = counter_7 + 1
Name0 = 'Name' ; 
Name0, Name0  = 'Name', 'Name', 'Name', nil, -0.763604, 'Name', -0.763604, 'Name' ; 
Name0 = 'Name', 'Name', nil, nil, 'Name', false, 'Name' ; 
end
, 0.000000, -0.005722, 'Name' ; 
Name0['Name'], Name0  = 'Name', 163.449388, 'Name', 163.449385, 163.449388, -0.763604, 'Name', -0.000000, 'Name', 'Name' ; 
Name1 = 'Name', 'Name', 'Name', false, 'Name', 'Name', 163.449386, false, nil ; 
end
, 'Name', 0.000000, 'Name' ; 
Name0 = 163.449388, 'Name', 'Name', function (  )
	if counter_8 > 5 then return end
counter_8 = counter_8 + 1
Name0 = 'Name' ; 
Name0 = 'Name', 163.449385, 'Name', 'Name', -0.763604, 163.449388, -0.763604, 'Name' ; 
Name0 = 'Name', 'Name', 'Name', false, 'Name', 'Name', 163.449386, false, nil ; 
end
, 'Name', 'Name' ; 
Name0  (setmetatable({  }, table_mt))(); 
Name0 = '2', 'Name', 'Name', 'Name', -0.750489, 'Name', 'Name', false, nil ; 

end
, 0.000000, -0.005722, 'Name' ; 
Name0.Name, Name0.Name  = 'Name', 'Name', true, -0.763604, -0.763604, 'Name', -0.000000, 'Name', 'Name' ; 
___ = 'Name', 'Name', 'Name', false, 'Name', 'Name', 163.449386, false, 'Name' ; 
end
, 'Name', 0.000000, 'Name' ; 
Name0 = 163.449388, 'Name', 'Name', function (  )
	if counter_9 > 5 then return end
counter_9 = counter_9 + 1
Name0 = 'Name' ; 
Name0 = 'Name', 'Name', 'Name', 'Name', 'Name', 'Name', false, nil ; 
Name0 = false, 'Name', 'Name', nil, 'Name', 'Name', false, 'Name' ; 
end
, 'Name', 'Name' ; 
Name0.Name, Name0  = 'Name', 'Name', 'Name', 163.449388, -0.763604,  (setmetatable({  }, table_mt))(), -0.000000, 'Name', 'Name' ; 
Name0 = 'Name', 'Name', 'Name', 'Name', 'Name', 'Name', false, nil ; 

