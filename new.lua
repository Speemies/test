local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Settings = getgenv().Settings

local Window = Library.CreateLib("🍇 grape hub", "Ocean")
local FarmingTab = Window:NewTab("Farming")
local FarmingMainSection = FarmingTab:NewSection("Main")

FarmingMainSection:NewToggle("Fast Farm", "Toggles fast farming.", function(state)
    Settings.Farming.FastFarm = state
end)

FarmingMainSection:NewTextBox("Farming Radius", "How far the fast farm will reach.", function(txt)
    local radius = tonumber(txt)
    if radius then
        Settings.Farming.FarmingRadius = radius
    else
        Settings.Farming.FarmingRadius = 70
    end
end)

FarmingMainSection:NewToggle("Fast Pets", "Makes pets maximum speed.", function(state)
    Settings.Farming.FastPets = state
end)

local PerformanceTab = Window:NewTab("Performance")
local PerformanceMainSection = PerformanceTab:NewSection("Main")

PerformanceMainSection:NewToggle("3D Rendering", "ToggleInfo", function(state)
    RenderingState = not state
    game:GetService("RunService"):Set3dRenderingEnabled(RenderingState)
end)
