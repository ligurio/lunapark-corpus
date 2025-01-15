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
counter_10 = 0
counter_11 = 0
counter_12 = 0
counter_13 = 0
counter_14 = 0
counter_15 = 0
counter_16 = 0
counter_17 = 0
counter_18 = 0
counter_19 = 0
counter_20 = 0
counter_21 = 0
counter_22 = 0
counter_23 = 0
counter_24 = 0
counter_25 = 0
counter_26 = 0
counter_27 = 0
counter_28 = 0
counter_29 = 0
counter_30 = 0
counter_31 = 0
counter_32 = 0
counter_33 = 0
counter_34 = 0
counter_35 = 0
counter_36 = 0
counter_37 = 0
while 'Name' do
if counter_0 > 5 then break end
counter_0 = counter_0 + 1
Name0, Name4  =  ...  ; 
end
; 
repeat
if counter_1 > 5 then break end
counter_1 = counter_1 + 1
until 'Name'; 
Name0 = 'Name' ; 
Name0 = 'Name' ; 
repeat
if counter_2 > 5 then break end
counter_2 = counter_2 + 1
until 'Name'; 
repeat
if counter_3 > 5 then break end
counter_3 = counter_3 + 1
until 'Name'; 
repeat
if counter_4 > 5 then break end
counter_4 = counter_4 + 1
until 'Name'; 
Name0 = 'Name' ; 
repeat
if counter_5 > 5 then break end
counter_5 = counter_5 + 1
until 'Name'; 
repeat
if counter_6 > 5 then break end
counter_6 = counter_6 + 1
until 'Name'; 
repeat
if counter_7 > 5 then break end
counter_7 = counter_7 + 1
until 'Name'; 
repeat
if counter_8 > 5 then break end
counter_8 = counter_8 + 1
until 'Name'; 
Name0 = 'Name' ; 
repeat
if counter_9 > 5 then break end
counter_9 = counter_9 + 1
until 'Name'; 
repeat
if counter_10 > 5 then break end
counter_10 = counter_10 + 1
while 'Name' do
if counter_11 > 5 then break end
counter_11 = counter_11 + 1
Name0, Name4  =  ...  ; 
end
; 
repeat
if counter_12 > 5 then break end
counter_12 = counter_12 + 1

until 'Name'; 
Name0 = 'Name' ; 
Name0 = 'Name' ; 
repeat
if counter_13 > 5 then break end
counter_13 = counter_13 + 1
until 'Name'; 
repeat
if counter_14 > 5 then break end
counter_14 = counter_14 + 1
until 'Name'; 
repeat
if counter_15 > 5 then break end
counter_15 = counter_15 + 1
until 'Name'; 
Name0 = 'Name' ; 
repeat
if counter_16 > 5 then break end
counter_16 = counter_16 + 1
until 'Name'; 
repeat
if counter_17 > 5 then break end
counter_17 = counter_17 + 1
until 'Name'; 
repeat
if counter_18 > 5 then break end
counter_18 = counter_18 + 1
until 'Name'; 
repeat
if counter_19 > 5 then break end
counter_19 = counter_19 + 1
until 'Name'; 
Name0 = 'Name' ; 
repeat
if counter_20 > 5 then break end
counter_20 = counter_20 + 1
until 'Name'; 
repeat
if counter_21 > 5 then break end
counter_21 = counter_21 + 1
until 'Name'; 
repeat
if counter_22 > 5 then break end
counter_22 = counter_22 + 1
Name0, Name4  =  ...  ; 
until 'Name'; 
repeat
if counter_23 > 5 then break end
counter_23 = counter_23 + 1

until 'Name'; 
repeat
if counter_24 > 5 then break end
counter_24 = counter_24 + 1
until 'Name'; 
repeat
if counter_25 > 5 then break end
counter_25 = counter_25 + 1
until 'Name'; 
repeat
if counter_26 > 5 then break end
counter_26 = counter_26 + 1
until nil; 
repeat
if counter_27 > 5 then break end
counter_27 = counter_27 + 1
until 'Name'; 
repeat
if counter_28 > 5 then break end
counter_28 = counter_28 + 1
until 'Name'; 
repeat
if counter_29 > 5 then break end
counter_29 = counter_29 + 1
until 'Name'; 
until 'Name'; 
repeat
if counter_30 > 5 then break end
counter_30 = counter_30 + 1
Name0, Name4  =  ...  ; 
until 'Name'; 
repeat
if counter_31 > 5 then break end
counter_31 = counter_31 + 1

until 'Name'; 
repeat
if counter_32 > 5 then break end
counter_32 = counter_32 + 1
until 'Name'; 
repeat
if counter_33 > 5 then break end
counter_33 = counter_33 + 1
until 'Name'; 
repeat
if counter_34 > 5 then break end
counter_34 = counter_34 + 1
until nil; 
repeat
if counter_35 > 5 then break end
counter_35 = counter_35 + 1
until 'Name'; 
repeat
if counter_36 > 5 then break end
counter_36 = counter_36 + 1
until 'Name'; 
repeat
if counter_37 > 5 then break end
counter_37 = counter_37 + 1
until 'Name'; 
