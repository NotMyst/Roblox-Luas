-- https://www.roblox.com/games/18239149752/Find-the-Bunnies

local transmitters = {}
for _, v in next, workspace.ToFind:GetChildren() do
    local interest = v:FindFirstChild("TouchInterest", true)
    if interest then
        local found = game.Players.LocalPlayer.ToFindFolder:FindFirstChild(v.Name)
        if not found or found and not found.Value then
            firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, interest.Parent, 1)
            table.insert(transmitters, interest)
        end
    end
end

task.wait(1)

for _, v in next, transmitters do
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v.Parent, 0)
end
