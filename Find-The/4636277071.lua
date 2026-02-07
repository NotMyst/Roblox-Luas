-- https://www.roblox.com/games/13307164400/Find-the-Kittens

local transmitters = {}
for _, v in next, workspace:GetDescendants() do
    local interest = v:FindFirstChild("TouchInterest")
    if interest and v:FindFirstChild("badgeGiver") and v:FindFirstChild("collectionScript") then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, interest.Parent, 1)
        table.insert(transmitters, interest)
    end
end

task.wait(1)

for _, v in next, transmitters do
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v.Parent, 0)
end
