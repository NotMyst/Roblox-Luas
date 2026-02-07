-- https://www.roblox.com/games/136809562020158/Find-The-Rocks

for _, v in next, workspace.Rocks:GetChildren() do
    if v:FindFirstChildOfClass("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 1)
    end
end

local eightball = workspace:FindFirstChild("8Ball")
if eightball and eightball:FindFirstChildOfClass("TouchTransmitter") then
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, eightball, 1)
end

local cavediver = workspace.Volcano["Cave Diver Rock"]
if cavediver and cavediver:FindFirstChildOfClass("TouchTransmitter") then
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, cavediver, 1)
end

local lavarock = workspace.Volcano["Lava Rock"]
if lavarock and lavarock:FindFirstChildOfClass("TouchTransmitter") then
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, lavarock, 1)
end

task.wait(1)
for _, v in next, workspace.Rocks:GetChildren() do
    if v:FindFirstChildOfClass("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 0)
    end
end

if eightball and eightball:FindFirstChildOfClass("TouchTransmitter") then
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, eightball, 0)
end

if cavediver and cavediver:FindFirstChildOfClass("TouchTransmitter") then
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, cavediver, 0)
end

if lavarock and lavarock:FindFirstChildOfClass("TouchTransmitter") then
    firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, lavarock, 0)
end
