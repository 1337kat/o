-- No collide
--Thread1
local Thread1 = coroutine.create(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1337kat/o/main/keyheads.lua'))()
end)
coroutine.resume(Thread1)

--Thread4
local Thread5 = coroutine.create(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1337kat/l/main/Fullbright.lua'))()
end)
coroutine.resume(Thread5)

--Thread7
local Thread7 = coroutine.create(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1337kat/l/main/Crosshair.lua'))()
end)
coroutine.resume(Thread7)

--Thread8
local Thread8 = coroutine.create(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1337kat/o/main/Longneck'))()
end)
coroutine.resume(Thread8)

--Thread9
local Thread9 = coroutine.create(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
coroutine.resume(Thread9)

--Thread10
local Thread10 = coroutine.create(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/1337kat/o/main/helmet%20indiciator.lua'))()
end)
coroutine.resume(Thread10)
