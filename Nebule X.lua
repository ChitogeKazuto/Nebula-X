local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ChitogeKazuto/Nebula-X/NebuleX/Ui%20Library.lua"))()
local NebuleX = Library.new("Nebule X [Demo]")

WalkSpeedSettings = {
    NSpeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
}

JumpPowerSettings = {
    NJump = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower
}

local LocalPlayerPage = NebuleX:addPage("LocalPlayer", 4384401919)
local WalkSpeedSection = LocalPlayerPage:addSection("WalkSpeed")

WalkSpeedSection:addSlider("Speed", WalkSpeedSettings.NSpeed, 0, 300, function(Value)
    _G.Speed = Value
end)
WalkSpeedSection:addToggle("Enable WalkSpeed", false, function(Value)
    _G.WalkSpeed = Value
    while _G.WalkSpeed do wait()
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = _G.Speed
    end
    if _G.WalkSpeed == false then
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeedSettings.NSpeed
    end
end)

local JumpPowerSection = LocalPlayerPage:addSection("JumpPower")
JumpPowerSection:addSlider("Jump", JumpPowerSettings.NJump, 0, 300, function(Value)
    _G.Jump = Value
end)
JumpPowerSection:addToggle("Enable JumpPower", false, function(Value)
    _G.JumpPower = Value
    while _G.JumpPower do wait()
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = _G.Jump
    end
    if _G.JumpPower == false then
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = JumpPowerSettings.NJump
    end
end)

local SettingsPage = NebuleX:addPage("Settings", 4483345737)
local SettingsSection = SettingsPage:addSection("Settings")

SettingsSection:addKeybind("Ui Toggle", Enum.KeyCode.RightControl, function()
    NebuleX:toggle()
end)

SettingsSection:addButton("Destroy Ui", function()
    NebuleX:toggle()
    wait(1)
    game:GetService("CoreGui")["Nebule X [Demo]"]:Destroy()
end)

NebuleX:SelectPage(NebuleX.pages[2], true)