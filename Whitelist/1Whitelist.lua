_G.Key = "Test"

local Key = game:HttpGet("https://pastebin.com/raw/dkY8Rnbf", true)
local Banned = game:HttpGet("https://pastebin.com/raw/j9KYxFHG", true)

if string.find(Key, _G.Key) then
    game:HttpGet("https://raw.githubusercontent.com/ChitogeKazuto/Nebula-X/NebuleX/Nebule%20X.lua", true)
else
    game:GetService("Players").LocalPlayer:kick("Nebule X : UnWhitelist")
end