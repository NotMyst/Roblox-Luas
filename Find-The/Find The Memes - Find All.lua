-- https://www.roblox.com/games/78927682425163/Find-The-Meme

local plr = game.Players.LocalPlayer

if not plr.Character then return end
local root = plr.Character.HumanoidRootPart

for _, v in next, game:GetService("Workspace").ToFind:GetChildren() do
    if v:FindFirstChildOfClass("TouchTransmitter") then
        firetouchinterest(v, root, true)
        task.wait()
        firetouchinterest(v, root, false)
    end
end
