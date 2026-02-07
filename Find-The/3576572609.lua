-- https://www.roblox.com/games/9615727931/Find-The-Eggs

for _, v in next, workspace.Eggs:GetChildren() do
    if v:FindFirstChildOfClass("TouchTransmitter") and not game.Players.LocalPlayer.MarkersClaimed:FindFirstChild(v.Name) then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 1)
    end
end

task.wait(1)
for _, v in next, workspace.Eggs:GetChildren() do
    if v:FindFirstChildOfClass("TouchTransmitter") and not game.Players.LocalPlayer.MarkersClaimed:FindFirstChild(v.Name) then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 0)
    end
end
