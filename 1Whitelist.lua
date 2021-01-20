_G.Key = "Test"
Whitelistkey = "https://raw.githubusercontent.com/ChitogeKazuto/Nebula-X/NebuleX/2WhitelistKey.lua"
BlacklistKey = "https://raw.githubusercontent.com/ChitogeKazuto/Nebula-X/NebuleX/2BlacklistKey.lua"

Key = game:HttpGet(Whitelistkey, true)
Banned = game:HttpGet(BlacklistKey, true)

if string.find(Key, _G.Key) then
    print("Yes, I did it")
else
    game:GetService("Players").LocalPlayer:kick("LOL")
end