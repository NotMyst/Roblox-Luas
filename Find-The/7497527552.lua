-- https://www.roblox.com/games/114366007319125/Find-The-Noobs

local transmitters = {}
for _, v in next, workspace.ToFind:GetChildren() do
    local interest = v:FindFirstChild("TouchInterest")
    if interest and not game.Players.LocalPlayer.ToFindFolder[v.Name].Value then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 1)
        table.insert(transmitters, interest)
    end
end

task.wait(1)

for _, v in next, transmitters do
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v.Parent, 0)
end
