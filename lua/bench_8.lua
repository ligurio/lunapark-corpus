-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local fmod = math.fmod

local function jit_fmod(a, b)
    if b < 0 then b = -b end
    if a < 0 then
        return -(-a % b)
    else
        return a % b
    end
end

local x = fmod(times, 30)

local x = (times % 30)

local x = jit_fmod(times, 30)
