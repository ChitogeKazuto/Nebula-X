local Username = game:GetService("Players").LocalPlayer.Character.Name

local Key = game:HttpGet("https://pastebin.com/raw/dkY8Rnbf", true)
local Banned = game:HttpGet("https://pastebin.com/raw/j9KYxFHG", true)
local User = game:HttpGet("https://pastebin.com/raw/Uag3BLWH", true)

if string.find(Key, _G.Key) then
    if string.find(User, Username) then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChitogeKazuto/Nebula-X/NebuleX/Nebule%20X.lua"))()
    end
else
    game:GetService("Players").LocalPlayer:kick("Good Bye!")
end