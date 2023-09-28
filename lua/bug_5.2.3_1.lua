-- Compiler can optimize away overflow check in table.unpack.

unpack({}, 0, 2^31 - 1) -- crashes on some platforms with some compiler options
