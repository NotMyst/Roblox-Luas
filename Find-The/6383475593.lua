-- https://www.roblox.com/games/18846033211/Find-The-Sweets

local transmitters = {}
for _, v in next, workspace.Items:GetChildren() do
    local interest = v:FindFirstChild("TouchInterest", true)
    if interest then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, interest.Parent, 1)
        table.insert(transmitters, interest)
    end
end

task.wait(1)

for _, v in next, transmitters do
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v.Parent, 0)
end
