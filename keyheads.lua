local headSize = 13 -- initial head size
local toggle = false -- initial toggle state
local key = "T" -- key to press to toggle
 
local function createHeadIndicator(hrp)
    local boxAdornment = Instance.new("BoxHandleAdornment", hrp.Head)
    boxAdornment.Color3 = Color3.fromRGB(0, 0, 255)
    boxAdornment.Adornee = hrp.Head
    boxAdornment.AlwaysOnTop = true
    boxAdornment.ZIndex = 10
    boxAdornment.Transparency = 0.5
    boxAdornment.Size = Vector3.new(1, 1, 1)
end
 
local function toggleHeadSize()
    toggle = not toggle -- switch the toggle state
    if toggle then -- if toggle is true
        headSize = 5 -- set head size to 20
    else -- if toggle is false
        headSize = 13 -- set head size to 13
    end
    for v251, v252 in pairs(workspace:GetChildren()) do
        if v252:FindFirstChild("HumanoidRootPart") then
            v252.Head.Size = Vector3.new(headSize, headSize, headSize) -- set the head size
            v252.Head.Transparency = 0.5
            v252.Head.Color = Color3.fromRGB(0,255,0)
            v252.Head.CanCollide = false
            createHeadIndicator(v252)
        end
    end
end
 
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode[key] then -- if the key is pressed
        toggleHeadSize() -- call the toggle function
    end
end)
