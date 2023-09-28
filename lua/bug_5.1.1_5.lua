-- setfenv accepts invalid first argument.

setfenv(nil, {})   -- should throw an error
