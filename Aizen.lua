-- Load Kavo UI Library with error handling
local success, Library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
end)

if not success then
    warn("❌ Failed to load Kavo UI Library. Fluxus might be blocking `game:HttpGet()`.")
    return
end

-- Create GUI with a better look
local Window = Library.CreateLib("🔵 Universal Aizen", "DarkTheme") -- Better UI theme
local Tab = Window:NewTab("📜 Scripts")
local Section = Tab:NewSection("🌟 Aizen Script Hub")

Section:NewLabel("🚀 Welcome to Universal Aizen!")

-- Function to safely load scripts
local function executeScript(scriptURL, scriptName)
    local success, response = pcall(game.HttpGet, game, scriptURL)
    if success then
        loadstring(response)()
        print("✅ " .. scriptName .. " script executed!")
    else
        warn("❌ Failed to load " .. scriptName .. " script. Fluxus might be blocking HTTP requests.")
    end
end

-- Scripts
Section:NewButton("🔥 Pop It Trading", "Trade Scam", function()
    executeScript("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore", "Pop It Trading")
end)

Section:NewButton("⚽ Blue Lock Rivals", "Auto play script", function()
    executeScript("https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals", "Blue Lock Rivals")
end)

-- Make the GUI draggable automatically for Mobile & PC
Library:ToggleUI() -- No need for a toggle button

print("✅ Universal Aizen Loaded Successfully!")
