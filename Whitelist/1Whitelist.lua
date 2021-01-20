_G.Key = "Test"

local Key = game:HttpGet("https://pastebin.com/raw/dkY8Rnbf", true)
local Banned = game:HttpGet("https://pastebin.com/raw/j9KYxFHG", true)

if string.find(Key, _G.Key) then
    print("Yes, I did it")
else
    game:GetService("Players").LocalPlayer:kick("LOL")
end