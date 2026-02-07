for _, v in next, workspace.ToFind:GetChildren() do
    if v:FindFirstChildOfClass("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 1)
    end
end

task.wait(1)
for _, v in next, workspace.ToFind:GetChildren() do
    if v:FindFirstChildOfClass("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.PrimaryPart, v, 0)
    end
end

game:GetService("ReplicatedStorage"):WaitForChild("FindTheEvents"):WaitForChild("Equip"):FireServer("rbxassetid://16297432952")
