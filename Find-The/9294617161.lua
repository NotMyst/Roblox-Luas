-- https://www.roblox.com/games/94925356624830/Find-the-Movies

local transmitters = {}
for _, v in next, workspace.ToFind:GetChildren() do
    local interest = v:FindFirstChild("TouchInterest", true)
    if interest and not game.Players.LocalPlayer.ToFindFolder:FindFirstChild(v.Name).Value then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, interest.Parent, 1)
        game.Players.LocalPlayer.Character:MoveTo(v.Position)
        table.insert(transmitters, interest)
        task.wait(5)
    end
end

task.wait(1)

for _, v in next, transmitters do
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v.Parent, 0)
end
