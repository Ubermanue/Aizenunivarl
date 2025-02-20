--// Universal Aizen GUI \\--
if game.CoreGui:FindFirstChild("AizenHub") then
    game.CoreGui.AizenHub:Destroy()
end

-- UI Variables
local AizenUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local Logo = Instance.new("ImageLabel")
local ContentFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

-- Parent the UI
AizenUI.Name = "AizenHub"
AizenUI.Parent = game.CoreGui

-- Main Frame
Frame.Size = UDim2.new(0, 350, 0, 250)
Frame.Position = UDim2.new(0.5, -175, 0.5, -125)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.ClipsDescendants = true
Frame.Parent = AizenUI

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

-- Title Bar
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TitleBar.Parent = Frame

Title.Size = UDim2.new(1, -50, 1, 0)
Title.Position = UDim2.new(0, 50, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Text = "🔵 Universal Aizen"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TitleBar

-- Close Button
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0.5, -15)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Text = "X"
CloseButton.Parent = TitleBar

CloseButton.MouseButton1Click:Connect(function()
    AizenUI:Destroy()
end)

-- Logo
Logo.Size = UDim2.new(0, 40, 0, 40)
Logo.Position = UDim2.new(0, 5, 0, 0)
Logo.BackgroundTransparency = 1
Logo.Image = "rbxassetid://134937676897685

" -- Replace with your logo ID
Logo.Parent = TitleBar

-- Content Frame
ContentFrame.Size = UDim2.new(1, -10, 1, -50)
ContentFrame.Position = UDim2.new(0, 5, 0, 45)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Parent = Frame

UIListLayout.Parent = ContentFrame
UIListLayout.Padding = UDim.new(0, 5)

-- Function to Create Buttons
local function CreateButton(name, color, scriptURL)
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, 0, 0, 35)
    Button.BackgroundColor3 = color
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Text = name
    Button.Font = Enum.Font.SourceSansBold
    Button.TextSize = 16
    Button.Parent = ContentFrame

    Button.MouseButton1Click:Connect(function()
        local success, response = pcall(game.HttpGet, game, scriptURL)
        if success then
            loadstring(response)()
        else
            warn("❌ Failed to load " .. name)
        end
    end)
end

-- Add Scripts to the GUI
CreateButton("🔥 Pop It Trading", Color3.fromRGB(50, 50, 150), "https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore")
CreateButton("⚽ Blue Lock Rivals", Color3.fromRGB(150, 50, 50), "https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals")

-- UI Dragging Feature
local UIS = game:GetService("UserInputService")
local Dragging, DragInput, DragStart, StartPos

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = true
        DragStart = input.Position
        StartPos = Frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                Dragging = false
            end
        end)
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        DragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == DragInput and Dragging then
        local Delta = input.Position - DragStart
        Frame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
    end
end)

print("✅ Universal Aizen Loaded Successfully!")
