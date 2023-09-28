-- debug.getfenv does not check whether it has an argument.

debug.getfenv()   -- should raise an error
