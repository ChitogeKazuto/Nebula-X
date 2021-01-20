_G.Key = ""
Whitelistkey = ""
BlacklistKey = ""

Key = game:HttpGet(Whitelistkey, true)
Banned = game:HttpGet(BlacklistKey, true)

if string.find(Key, _G.Key) then
    print("Yes, I did it")
else
    game:GetService("Players").LocalPlayer:kick("LOL")
end