-- User-requested GC step may loop forever.

collectgarbage("setpause", 100) -- small value
collectgarbage("setstepmul", 2000) -- large value
collectgarbage("step",0)
