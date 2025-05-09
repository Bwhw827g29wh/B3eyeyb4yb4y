-- Complex Roblox-like script with multiple functions and tables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local AntiExploit = {}
AntiExploit.Enabled = true
AntiExploit.MaxJumpHeight = 50
AntiExploit.MaxWalkSpeed = 100

function AntiExploit:DetectSpeedHack(player)
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        local humanoid = character.Humanoid
        if humanoid.WalkSpeed > self.MaxWalkSpeed then
            return true
        end
    end
    return false
end

function AntiExploit:DetectFlyHack(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local rootPart = character.HumanoidRootPart
        if rootPart.Position.Y > self.MaxJumpHeight then
            return true
        end
    end
    return false
end

-- Initialize anti-exploit system
local function InitAntiExploit()
    print("Anti-exploit system initialized")
    for _, player in pairs(Players:GetPlayers()) do
        if AntiExploit:DetectSpeedHack(player) then
            print("Detected speed hack from " .. player.Name)
        end
        if AntiExploit:DetectFlyHack(player) then
            print("Detected fly hack from " .. player.Name)
        end
    end
end

-- Start monitoring
InitAntiExploit()
