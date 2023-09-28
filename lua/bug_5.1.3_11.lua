-- module may change the environment of a C function.

pcall(module, "xuxu")
assert(debug.getfenv(pcall) == xuxu)
