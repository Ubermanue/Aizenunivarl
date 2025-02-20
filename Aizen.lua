-- Create UI Screen
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

-- Create Main Frame (Resizable & Draggable)
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 200) -- Bigger size
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 3
Frame.Active = true
Frame.Draggable = true -- Makes it movable
Frame.Parent = ScreenGui

-- Create Title Bar (With Close Button)
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TitleBar.Parent = Frame

-- Add Logo
local Logo = Instance.new("ImageLabel")
Logo.Size = UDim2.new(0, 30, 0, 30)
Logo.Position = UDim2.new(0, 5, 0, 5)
Logo.Image = "rbxassetid://6031071057" -- You can change this ID to another logo
Logo.Parent = TitleBar

-- Title Text
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -40, 1, 0)
Title.Position = UDim2.new(0, 40, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Text = "🔵 Universal Aizen"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TitleBar

-- Close (X) Button
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 1, 0)
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 20
CloseButton.Parent = TitleBar

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Create Pop It Trading Button
local PopItButton = Instance.new("TextButton")
PopItButton.Size = UDim2.new(1, -20, 0, 40)
PopItButton.Position = UDim2.new(0, 10, 0, 50)
PopItButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PopItButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PopItButton.Text = "🔥 Pop It Trading"
PopItButton.Font = Enum.Font.SourceSansBold
PopItButton.TextSize = 18
PopItButton.Parent = Frame

PopItButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore"))()
end)

-- Create Blue Lock Rivals Button
local BlueLockButton = Instance.new("TextButton")
BlueLockButton.Size = UDim2.new(1, -20, 0, 40)
BlueLockButton.Position = UDim2.new(0, 10, 0, 100)
BlueLockButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
BlueLockButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BlueLockButton.Text = "⚽ Blue Lock Rivals"
BlueLockButton.Font = Enum.Font.SourceSansBold
BlueLockButton.TextSize = 18
BlueLockButton.Parent = Frame

BlueLockButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals"))()
end)

-- Credit to You
local CreditLabel = Instance.new("TextLabel")
CreditLabel.Size = UDim2.new(1, 0, 0, 30)
CreditLabel.Position = UDim2.new(0, 0, 0, 160)
CreditLabel.BackgroundTransparency = 1
CreditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditLabel.Text = "👑 Created by Kyzin"
CreditLabel.Font = Enum.Font.SourceSansBold
CreditLabel.TextSize = 16
CreditLabel.Parent = Frame

print("✅ Universal Aizen Loaded Successfully!")
