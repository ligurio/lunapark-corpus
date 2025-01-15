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
counter_78 = 0
counter_79 = 0
counter_80 = 0
counter_81 = 0
counter_82 = 0
counter_83 = 0
counter_84 = 0
counter_85 = 0
counter_86 = 0
counter_87 = 0
counter_88 = 0
counter_89 = 0
counter_90 = 0
counter_91 = 0
counter_92 = 0
counter_93 = 0
counter_94 = 0
counter_95 = 0
counter_96 = 0
counter_97 = 0
counter_98 = 0
counter_99 = 0
counter_100 = 0
counter_101 = 0
counter_102 = 0
counter_103 = 0
counter_104 = 0
counter_105 = 0
counter_106 = 0
counter_107 = 0
counter_108 = 0
counter_109 = 0
counter_110 = 0
counter_111 = 0
counter_112 = 0
counter_113 = 0
counter_114 = 0
counter_115 = 0
counter_116 = 0
counter_117 = 0
counter_118 = 0
counter_119 = 0
counter_120 = 0
counter_121 = 0
counter_122 = 0
counter_123 = 0
counter_124 = 0
counter_125 = 0
counter_126 = 0
counter_127 = 0
counter_128 = 0
counter_129 = 0
counter_130 = 0
counter_131 = 0
counter_132 = 0
counter_133 = 0
Name0 = function (  )
	if counter_0 > 5 then return end
counter_0 = counter_0 + 1
end
, function (  )
	if counter_1 > 5 then return end
counter_1 = counter_1 + 1
end
, function (  )
	if counter_2 > 5 then return end
counter_2 = counter_2 + 1
end
, function (  )
	if counter_3 > 5 then return end
counter_3 = counter_3 + 1
end
, function (  )
	if counter_4 > 5 then return end
counter_4 = counter_4 + 1
Name0 = function (  )
	if counter_5 > 5 then return end
counter_5 = counter_5 + 1
end
, function (  )
	if counter_6 > 5 then return end
counter_6 = counter_6 + 1
end
, function (  )
	if counter_7 > 5 then return end
counter_7 = counter_7 + 1
end
, function (  )
	if counter_8 > 5 then return end
counter_8 = counter_8 + 1
end
, function (  )
	if counter_9 > 5 then return end
counter_9 = counter_9 + 1
end
, function ( ... )
	if counter_10 > 5 then return end
counter_10 = counter_10 + 1
end
 ; 
Name0 = function (  )
	if counter_11 > 5 then return end
counter_11 = counter_11 + 1
end
, function (  )
	if counter_12 > 5 then return end
counter_12 = counter_12 + 1
end
, function (  )
	if counter_13 > 5 then return end
counter_13 = counter_13 + 1
end
,  nil, function ( Name0 )
	if counter_14 > 5 then return end
counter_14 = counter_14 + 1
return function (  )
	if counter_15 > 5 then return end
counter_15 = counter_15 + 1
end
, function (  )
	if counter_16 > 5 then return end
counter_16 = counter_16 + 1
end
, function (  )
	if counter_17 > 5 then return end
counter_17 = counter_17 + 1
end
, function (  )
	if counter_18 > 5 then return end
counter_18 = counter_18 + 1
end
,  nil, 'Name'  ; 
end
 ; 
Name0, maxsnap.Name  = function (  )
	if counter_19 > 5 then return end
counter_19 = counter_19 + 1
end
, function (  )
	if counter_20 > 5 then return end
counter_20 = counter_20 + 1
return true, 'Name'  ; 
end
, function (  )
	if counter_21 > 5 then return end
counter_21 = counter_21 + 1
end
, 'Name' ; 
Name0 = function (  )
	if counter_22 > 5 then return end
counter_22 = counter_22 + 1
end
, function (  )
	if counter_23 > 5 then return end
counter_23 = counter_23 + 1
end
, function (  )
	if counter_24 > 5 then return end
counter_24 = counter_24 + 1
end
, function (  )
	if counter_25 > 5 then return end
counter_25 = counter_25 + 1
do
Name0 = 'Name' ; 
end
; 
end
, 'Name' ; 
Name0 = function (  )
	if counter_26 > 5 then return end
counter_26 = counter_26 + 1
end
, function (  )
	if counter_27 > 5 then return end
counter_27 = counter_27 + 1
end
, function (  )
	if counter_28 > 5 then return end
counter_28 = counter_28 + 1
end
, function (  )
	if counter_29 > 5 then return end
counter_29 = counter_29 + 1
end
, function (  )
	if counter_30 > 5 then return end
counter_30 = counter_30 + 1
end
 ; 
return function (  )
	if counter_31 > 5 then return end
counter_31 = counter_31 + 1
end
, function (  )
	if counter_32 > 5 then return end
counter_32 = counter_32 + 1
end
, function (  )
	if counter_33 > 5 then return end
counter_33 = counter_33 + 1
end
, function (  )
	if counter_34 > 5 then return end
counter_34 = counter_34 + 1
end
, function (  )
	if counter_35 > 5 then return end
counter_35 = counter_35 + 1
end
, function ( ... )
	if counter_36 > 5 then return end
counter_36 = counter_36 + 1
end
  ; 
end
, function (  )
	if counter_37 > 5 then return end
counter_37 = counter_37 + 1
end
 ; 
Name0 = function (  )
	if counter_38 > 5 then return end
counter_38 = counter_38 + 1
end
, function (  )
	if counter_39 > 5 then return end
counter_39 = counter_39 + 1
end
, function (  )
	if counter_40 > 5 then return end
counter_40 = counter_40 + 1
end
, function (  )
	if counter_41 > 5 then return end
counter_41 = counter_41 + 1
end
, function (  )
	if counter_42 > 5 then return end
counter_42 = counter_42 + 1
end
 ; 
Name0, Name0._  = function (  )
	if counter_43 > 5 then return end
counter_43 = counter_43 + 1
end
, function (  )
	if counter_44 > 5 then return end
counter_44 = counter_44 + 1
end
, 0.000000, function (  )
	if counter_45 > 5 then return end
counter_45 = counter_45 + 1
end
, function (  )
	if counter_46 > 5 then return end
counter_46 = counter_46 + 1
end
, function (  )
	if counter_47 > 5 then return end
counter_47 = counter_47 + 1
end
 ; 
Name0 = function (  )
	if counter_48 > 5 then return end
counter_48 = counter_48 + 1
end
, function (  )
	if counter_49 > 5 then return end
counter_49 = counter_49 + 1
Name0 = 'Name' ; 
Name0 = true, function (  )
	if counter_50 > 5 then return end
counter_50 = counter_50 + 1
end
, 'Name', function (  )
	if counter_51 > 5 then return end
counter_51 = counter_51 + 1
end
, function (  )
	if counter_52 > 5 then return end
counter_52 = counter_52 + 1
end
 ; 
Name0 = function (  )
	if counter_53 > 5 then return end
counter_53 = counter_53 + 1
end
, function (  )
	if counter_54 > 5 then return end
counter_54 = counter_54 + 1
end
, function (  )
	if counter_55 > 5 then return end
counter_55 = counter_55 + 1
end
, function (  )
	if counter_56 > 5 then return end
counter_56 = counter_56 + 1
end
, function (  )
	if counter_57 > 5 then return end
counter_57 = counter_57 + 1
end
 ; 
Name0 = function (  )
	if counter_58 > 5 then return end
counter_58 = counter_58 + 1
end
, function (  )
	if counter_59 > 5 then return end
counter_59 = counter_59 + 1
end
,  nil, function (  )
	if counter_60 > 5 then return end
counter_60 = counter_60 + 1
end
, function (  )
	if counter_61 > 5 then return end
counter_61 = counter_61 + 1
end
 ; 
return function (  )
	if counter_62 > 5 then return end
counter_62 = counter_62 + 1
end
, function (  )
	if counter_63 > 5 then return end
counter_63 = counter_63 + 1
end
, function (  )
	if counter_64 > 5 then return end
counter_64 = counter_64 + 1
end
, function ( Name0, ... )
	if counter_65 > 5 then return end
counter_65 = counter_65 + 1
end
, function (  )
	if counter_66 > 5 then return end
counter_66 = counter_66 + 1
end
, function (  )
	if counter_67 > 5 then return end
counter_67 = counter_67 + 1
end
  ; 
end
, function (  )
	if counter_68 > 5 then return end
counter_68 = counter_68 + 1
end
, function (  )
	if counter_69 > 5 then return end
counter_69 = counter_69 + 1
end
,  ...  ; 
Name0 = -0.000000, function (  )
	if counter_70 > 5 then return end
counter_70 = counter_70 + 1
end
, function (  )
	if counter_71 > 5 then return end
counter_71 = counter_71 + 1
end
, function (  )
	if counter_72 > 5 then return end
counter_72 = counter_72 + 1
end
, function (  )
	if counter_73 > 5 then return end
counter_73 = counter_73 + 1
end
, function (  )
	if counter_74 > 5 then return end
counter_74 = counter_74 + 1
end
 ; 
Name0 = function (  )
	if counter_75 > 5 then return end
counter_75 = counter_75 + 1
end
, function (  )
	if counter_76 > 5 then return end
counter_76 = counter_76 + 1
end
, function (  )
	if counter_77 > 5 then return end
counter_77 = counter_77 + 1
for Name0 = always_number('Name'), always_number('Name'), always_number('Name') do
if counter_78 > 5 then break end
counter_78 = counter_78 + 1
end
; 
Name0 = function (  )
	if counter_79 > 5 then return end
counter_79 = counter_79 + 1
end
, function (  )
	if counter_80 > 5 then return end
counter_80 = counter_80 + 1
end
, function (  )
	if counter_81 > 5 then return end
counter_81 = counter_81 + 1
end
, function (  )
	if counter_82 > 5 then return end
counter_82 = counter_82 + 1
end
, 'Name' ; 
Name0 = function (  )
	if counter_83 > 5 then return end
counter_83 = counter_83 + 1
end
, function (  )
	if counter_84 > 5 then return end
counter_84 = counter_84 + 1
end
, function (  )
	if counter_85 > 5 then return end
counter_85 = counter_85 + 1
end
, function (  )
	if counter_86 > 5 then return end
counter_86 = counter_86 + 1
end
, function (  )
	if counter_87 > 5 then return end
counter_87 = counter_87 + 1
end
 ; 
Name0 = function (  )
	if counter_88 > 5 then return end
counter_88 = counter_88 + 1
end
, 'Name', function (  )
	if counter_89 > 5 then return end
counter_89 = counter_89 + 1
end
, function (  )
	if counter_90 > 5 then return end
counter_90 = counter_90 + 1
end
, function (  )
	if counter_91 > 5 then return end
counter_91 = counter_91 + 1
end
 ; 
Name0 = function (  )
	if counter_92 > 5 then return end
counter_92 = counter_92 + 1
end
, function (  )
	if counter_93 > 5 then return end
counter_93 = counter_93 + 1
end
, function (  )
	if counter_94 > 5 then return end
counter_94 = counter_94 + 1
end
, function (  )
	if counter_95 > 5 then return end
counter_95 = counter_95 + 1
end
, Name0 ; 
return function (  )
	if counter_96 > 5 then return end
counter_96 = counter_96 + 1
end
, function (  )
	if counter_97 > 5 then return end
counter_97 = counter_97 + 1
end
, function (  )
	if counter_98 > 5 then return end
counter_98 = counter_98 + 1
end
, function (  )
	if counter_99 > 5 then return end
counter_99 = counter_99 + 1
end
, function (  )
	if counter_100 > 5 then return end
counter_100 = counter_100 + 1
end
, function (  )
	if counter_101 > 5 then return end
counter_101 = counter_101 + 1
end
  ; 
end
, function (  )
	if counter_102 > 5 then return end
counter_102 = counter_102 + 1
end
, function (  )
	if counter_103 > 5 then return end
counter_103 = counter_103 + 1
Name0 = function (  )
	if counter_104 > 5 then return end
counter_104 = counter_104 + 1
end
, function (  )
	if counter_105 > 5 then return end
counter_105 = counter_105 + 1
end
, function (  )
	if counter_106 > 5 then return end
counter_106 = counter_106 + 1
end
, function (  )
	if counter_107 > 5 then return end
counter_107 = counter_107 + 1
end
, function (  )
	if counter_108 > 5 then return end
counter_108 = counter_108 + 1
end
, function (  )
	if counter_109 > 5 then return end
counter_109 = counter_109 + 1
end
 ; 
Name0 = function (  )
	if counter_110 > 5 then return end
counter_110 = counter_110 + 1
end
, function (  )
	if counter_111 > 5 then return end
counter_111 = counter_111 + 1
end
, function (  )
	if counter_112 > 5 then return end
counter_112 = counter_112 + 1
end
, function (  )
	if counter_113 > 5 then return end
counter_113 = counter_113 + 1
end
, function (  )
	if counter_114 > 5 then return end
counter_114 = counter_114 + 1
end
 ; 
Name0 = function (  )
	if counter_115 > 5 then return end
counter_115 = counter_115 + 1
end
, function (  )
	if counter_116 > 5 then return end
counter_116 = counter_116 + 1
end
, function (  )
	if counter_117 > 5 then return end
counter_117 = counter_117 + 1
end
, function (  )
	if counter_118 > 5 then return end
counter_118 = counter_118 + 1
end
, 'Name' ; 
Name0 = function (  )
	if counter_119 > 5 then return end
counter_119 = counter_119 + 1
end
, function (  )
	if counter_120 > 5 then return end
counter_120 = counter_120 + 1
end
, function (  )
	if counter_121 > 5 then return end
counter_121 = counter_121 + 1
end
, 'Name', function (  )
	if counter_122 > 5 then return end
counter_122 = counter_122 + 1
end
 ; 
Name0 = function (  )
	if counter_123 > 5 then return end
counter_123 = counter_123 + 1
end
, function (  )
	if counter_124 > 5 then return end
counter_124 = counter_124 + 1
end
, function (  )
	if counter_125 > 5 then return end
counter_125 = counter_125 + 1
end
, function (  )
	if counter_126 > 5 then return end
counter_126 = counter_126 + 1
end
, function ( Name0 )
	if counter_127 > 5 then return end
counter_127 = counter_127 + 1
end
 ; 
return function (  )
	if counter_128 > 5 then return end
counter_128 = counter_128 + 1
end
, function (  )
	if counter_129 > 5 then return end
counter_129 = counter_129 + 1
end
, function (  )
	if counter_130 > 5 then return end
counter_130 = counter_130 + 1
end
, function (  )
	if counter_131 > 5 then return end
counter_131 = counter_131 + 1
end
, function (  )
	if counter_132 > 5 then return end
counter_132 = counter_132 + 1
end
, function (  )
	if counter_133 > 5 then return end
counter_133 = counter_133 + 1
end
  ; 
end
 ; 

