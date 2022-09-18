game.Lighting.Sky:Destroy()
while task.wait() do
pcall(function()
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
    if v:FindFirstChild("HazeESP") then
        v.HazeESP.Size = UDim2.new(50,50,50,50)
        v.HazeESP.MaxDistance = "inf"
    end
end
end)
end
