local link = "https://raw.githubusercontent.com/NotMyst/Roblox-Luas/refs/heads/main/Find-The/"..tostring(game.PlaceId)..".lua"
local content = game:HttpGet(link)
if content ~= "" then
    print("loading "..link)
    loadstring(content)()
else
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "unsupported",
        Text = "this game isnt supported yet"
    })
end
