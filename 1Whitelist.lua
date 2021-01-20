_G.Key = "Test"
local Whitelistkey = "https://raw.githubusercontent.com/ChitogeKazuto/Nebula-X/NebuleX/2WhitelistKey.lua"
local BlacklistKey = "https://raw.githubusercontent.com/ChitogeKazuto/Nebula-X/NebuleX/2BlacklistKey.lua"

local Key = game:HttpGet(Whitelistkey, true)
local Banned = game:HttpGet(BlacklistKey, true)

if string.find(Key, _G.Key) then
    print("Yes, I did it")
else
    game:GetService("Players").LocalPlayer:kick("LOL")
end