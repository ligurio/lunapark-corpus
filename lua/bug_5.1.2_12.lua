-- Stand-alone interpreter shows incorrect error message when the "message" is
-- a coroutine.

error(coroutine.create(function() end))
