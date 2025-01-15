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
counter_38 = 0
counter_39 = 0
counter_40 = 0
counter_41 = 0
counter_42 = 0
counter_43 = 0
counter_44 = 0
counter_45 = 0
counter_46 = 0
counter_47 = 0
counter_48 = 0
counter_49 = 0
counter_50 = 0
counter_51 = 0
counter_52 = 0
counter_53 = 0
counter_54 = 0
counter_55 = 0
counter_56 = 0
counter_57 = 0
counter_58 = 0
counter_59 = 0
counter_60 = 0
counter_61 = 0
counter_62 = 0
counter_63 = 0
counter_64 = 0
counter_65 = 0
counter_66 = 0
counter_67 = 0
counter_68 = 0
counter_69 = 0
counter_70 = 0
counter_71 = 0
counter_72 = 0
counter_73 = 0
counter_74 = 0
counter_75 = 0
counter_76 = 0
counter_77 = 0
while 'Name' do
if counter_0 > 5 then break end
counter_0 = counter_0 + 1
while 'Name' do
if counter_1 > 5 then break end
counter_1 = counter_1 + 1
end
; 
end
; 
while 'Name' do
if counter_2 > 5 then break end
counter_2 = counter_2 + 1
while 'Name' do
if counter_3 > 5 then break end
counter_3 = counter_3 + 1
end
; 
while 'Name' .. 'Name' do
if counter_4 > 5 then break end
counter_4 = counter_4 + 1
while 'Name' do
if counter_5 > 5 then break end
counter_5 = counter_5 + 1
end
; 
while 'Name' do
if counter_6 > 5 then break end
counter_6 = counter_6 + 1
end
; 
while 'Name' do
if counter_7 > 5 then break end
counter_7 = counter_7 + 1
end
; 
if 'Name' then
	Name0 = 'Name' ; 
end
; 
end
; 
local function Name0 (  )
	if counter_8 > 5 then return end
counter_8 = counter_8 + 1
end
; 
while 'Name' do
if counter_9 > 5 then break end
counter_9 = counter_9 + 1
end
; 
end
; 
while 'Name' do
if counter_10 > 5 then break end
counter_10 = counter_10 + 1
while 'Name' do
if counter_11 > 5 then break end
counter_11 = counter_11 + 1
repeat
if counter_12 > 5 then break end
counter_12 = counter_12 + 1
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
repeat
if counter_16 > 5 then break end
counter_16 = counter_16 + 1
until 'Name'; 
until 'Name'; 
repeat
if counter_17 > 5 then break end
counter_17 = counter_17 + 1
repeat
if counter_18 > 5 then break end
counter_18 = counter_18 + 1
repeat
if counter_19 > 5 then break end
counter_19 = counter_19 + 1
until 'Name'; 
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
until 'Name'; 
until 'Name'; 
repeat
if counter_23 > 5 then break end
counter_23 = counter_23 + 1
repeat
if counter_24 > 5 then break end
counter_24 = counter_24 + 1
repeat
if counter_25 > 5 then break end
counter_25 = counter_25 + 1
until 'Name'; 
repeat
if counter_26 > 5 then break end
counter_26 = counter_26 + 1
until 'Name'; 
repeat
if counter_27 > 5 then break end
counter_27 = counter_27 + 1
until 'Name'; 
repeat
if counter_28 > 5 then break end
counter_28 = counter_28 + 1
until 'Name'; 
until 'Name'; 
repeat
if counter_29 > 5 then break end
counter_29 = counter_29 + 1
until 'Name'; 
repeat
if counter_30 > 5 then break end
counter_30 = counter_30 + 1
until 'Name'; 
repeat
if counter_31 > 5 then break end
counter_31 = counter_31 + 1
until 'Name'; 
until 'Name'; 
repeat
if counter_32 > 5 then break end
counter_32 = counter_32 + 1
until 'Name'; 
repeat
if counter_33 > 5 then break end
counter_33 = counter_33 + 1
until 'Name'; 
until 'Name'; 
repeat
if counter_34 > 5 then break end
counter_34 = counter_34 + 1
repeat
if counter_35 > 5 then break end
counter_35 = counter_35 + 1
until 'Name'; 
repeat
if counter_36 > 5 then break end
counter_36 = counter_36 + 1
repeat
if counter_37 > 5 then break end
counter_37 = counter_37 + 1
repeat
if counter_38 > 5 then break end
counter_38 = counter_38 + 1
until 'Name'; 
repeat
if counter_39 > 5 then break end
counter_39 = counter_39 + 1
until 'Name'; 
repeat
if counter_40 > 5 then break end
counter_40 = counter_40 + 1
until 'Name'; 
Name0 = 'Name' ; 
until 'Name'; 
repeat
if counter_41 > 5 then break end
counter_41 = counter_41 + 1
until 'Name'; 
repeat
if counter_42 > 5 then break end
counter_42 = counter_42 + 1
until 'Name'; 
repeat
if counter_43 > 5 then break end
counter_43 = counter_43 + 1
until 'Name'; 
until 'Name'; 
Name0 = 'Name' ; 
repeat
if counter_44 > 5 then break end
counter_44 = counter_44 + 1
until 'Name'; 
until not  'Name'; 
repeat
if counter_45 > 5 then break end
counter_45 = counter_45 + 1
repeat
if counter_46 > 5 then break end
counter_46 = counter_46 + 1
repeat
if counter_47 > 5 then break end
counter_47 = counter_47 + 1
until 'Name'; 
repeat
if counter_48 > 5 then break end
counter_48 = counter_48 + 1
until 'Name'; 
repeat
if counter_49 > 5 then break end
counter_49 = counter_49 + 1
until 'Name'; 
until 'Name'; 
repeat
if counter_50 > 5 then break end
counter_50 = counter_50 + 1
until 'Name'; 
repeat
if counter_51 > 5 then break end
counter_51 = counter_51 + 1
repeat
if counter_52 > 5 then break end
counter_52 = counter_52 + 1
repeat
if counter_53 > 5 then break end
counter_53 = counter_53 + 1
until 'Name'; 
repeat
if counter_54 > 5 then break end
counter_54 = counter_54 + 1
until 'Name'; 
repeat
if counter_55 > 5 then break end
counter_55 = counter_55 + 1
until 'Name'; 
until 'Name'; 
repeat
if counter_56 > 5 then break end
counter_56 = counter_56 + 1
repeat
if counter_57 > 5 then break end
counter_57 = counter_57 + 1
repeat
if counter_58 > 5 then break end
counter_58 = counter_58 + 1
until 'Name'; 
repeat
if counter_59 > 5 then break end
counter_59 = counter_59 + 1
until 'Name'; 
repeat
if counter_60 > 5 then break end
counter_60 = counter_60 + 1
until 'Name'; 
repeat
if counter_61 > 5 then break end
counter_61 = counter_61 + 1
until 'Name'; 
until 'Name'; 
repeat
if counter_62 > 5 then break end
counter_62 = counter_62 + 1
until 'Name'; 
repeat
if counter_63 > 5 then break end
counter_63 = counter_63 + 1
until 'Name'; 
Name0 = 'Name' ; 
until true; 
repeat
if counter_64 > 5 then break end
counter_64 = counter_64 + 1
until 'Name'; 
repeat
if counter_65 > 5 then break end
counter_65 = counter_65 + 1
until 'Name'; 
until 'Name'; 
until 'Name'; 
end
; 
while 'Name' .. 'Name' do
if counter_66 > 5 then break end
counter_66 = counter_66 + 1
function Name0(  )
	if counter_67 > 5 then return end
counter_67 = counter_67 + 1
end
; 
while 'Name' do
if counter_68 > 5 then break end
counter_68 = counter_68 + 1
end
; 
while 'Name' do
if counter_69 > 5 then break end
counter_69 = counter_69 + 1
end
; 
while 'Name' do
if counter_70 > 5 then break end
counter_70 = counter_70 + 1
end
; 
end
; 
while 'Name' do
if counter_71 > 5 then break end
counter_71 = counter_71 + 1
end
; 
while 'Name' do
if counter_72 > 5 then break end
counter_72 = counter_72 + 1
while 'Name' do
if counter_73 > 5 then break end
counter_73 = counter_73 + 1
end
; 
while 'Name' do
if counter_74 > 5 then break end
counter_74 = counter_74 + 1
end
; 
while 'Name' do
if counter_75 > 5 then break end
counter_75 = counter_75 + 1
end
; 
while 'Name' do
if counter_76 > 5 then break end
counter_76 = counter_76 + 1
end
; 
end
; 
end
; 
while 'Name' do
if counter_77 > 5 then break end
counter_77 = counter_77 + 1
end
; 
