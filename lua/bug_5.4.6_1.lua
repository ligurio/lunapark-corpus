-- You must have the locale 'km_KH.UTF-8' installed
assert(os.setlocale("km_KH.UTF-8"))
local A = "\u{17A4}"
local B = "\u{17A2}\u{17B6}"
print(string.rep(B, 100000) .. "\0" <= string.rep(A, 100000) .. "\0")
