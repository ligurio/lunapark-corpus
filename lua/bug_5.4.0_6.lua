-- http://lua-users.org/lists/lua-l/2020-07/msg00078.html
-- Errors in finalizers need a valid 'pc' to produce an error message.

function
errfunc (  )
setmetatable (
{
}
,
{
    __gc = coroutine
}
)[xpcall
  ( function (  )function crash (  )function
    f ( p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38,
        p39, p40, p41, p42, p43, p44, p45, p46, p48, p49, p50,
        ... ) local a14 end f (  )(  )end for i = 1, 5
    do
    crash (  )end end,
    coroutine.
    wrap ( function (  )xpcall ( test, errfunc ) xpcall ( test, errfunc )
           end ) )]
    = load end coro =
          ( function (  )print ( xpcall ( test, errfunc ) ) end ) (  )
