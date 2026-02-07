-- https://www.roblox.com/games/16098159414/Find-The-Logos

local logos = game:GetService("ReplicatedStorage").Logos
local transmitters = {}
for _, v in next, workspace:GetDescendants() do
    if v:FindFirstChildOfClass("TouchTransmitter") and logos:FindFirstChild(v.Name) and not game.Players.LocalPlayer.LogosCollected:FindFirstChild(v.Name) then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 1)
        table.insert(transmitters, v)
    end
end

task.wait(1)

for _, v in next, transmitters do
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 0)
end
