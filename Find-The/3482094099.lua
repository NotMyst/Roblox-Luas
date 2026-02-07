-- https://www.roblox.com/games/9304358188/Find-The-Memes

local transmitters = {}
for _, v in next, workspace.Pals:GetChildren() do
    local interest = v:FindFirstChild("TouchInterest", true)
    if interest and not game.Players.LocalPlayer.palsCollected:FindFirstChild(v.Name) then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, interest.Parent, 1)
        table.insert(transmitters, interest)
    end
end

task.wait(1)

for _, v in next, transmitters do
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v.Parent, 0)
end
