loadstring(game:HttpGet(("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/uimain.txt")))()

       local Window = MakeWindow({
         Hub = {
         Title = "PvP script By KingHieuPro",
         Animation = "HieuRoBlox"
         },
        Key = {
        KeySystem = false,
        Title = "[ PvpScript ] By Hieu",
        Description = "https://discord.gg/qUgx8PnJu9",
        KeyLink = "https://justpaste.it/4v6p7",
        Keys = {"HieuDzHaHa"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Đang Chạy Kịch Bản",
       Incorrectkey = "Mật Khẩu Không Đúng",
       CopyKeyLink = "Đã Sao Chép"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=81639187607552",
       Size = {40, 40},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "AimBott"})
    AddButton(Tab1o, {
     Name = "AimBot 100%",
    Callback = function()
    getgenv().setting = {
    Fov = 50,
    Color = Color3.fromRGB(191, 255, 209),
    LockPlayers = false,
    LockPlayersBind = Enum.KeyCode.L,
    resetPlayersBind = Enum.KeyCode.P,
}

Playersaimbot = nil
local mouse = game.Players.LocalPlayer:GetMouse()
local guiservice = game.GetService(game, "GuiService")
local players = game.GetService(game, "Players")
local localPlayer = players.LocalPlayer
local currentCamera = game.GetService(game, "Workspace").CurrentCamera
local circle = Drawing.new("Circle")

if game:GetService("CoreGui"):FindFirstChild('infoplayers') then 
    game:GetService("CoreGui"):FindFirstChild('infoplayers'):Destroy()
end

local infoplayers = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local MainCorner = Instance.new("UICorner")
local Profile = Instance.new("Frame")
local ProfileCorner = Instance.new("UICorner")
local ImageProfile = Instance.new("ImageLabel")
local ImageProfileCorner = Instance.new("UICorner")
local HealthPlayers = Instance.new("TextLabel")
local NamePlayers = Instance.new("TextLabel")
local loackplayerslabel = Instance.new("TextLabel")
local Healthbar = Instance.new("Frame")
local HealthbarCorner = Instance.new("UICorner")
local Healthgreen = Instance.new("Frame")
local HealthgreenCorner = Instance.new("UICorner")

infoplayers.Name = "infoplayers"
infoplayers.Parent = game:GetService("CoreGui")
infoplayers.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = infoplayers
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.Position = UDim2.new(0.01, 0, 0.3, 0)
Main.Size = UDim2.new(0, 0, 0, 0)

MainCorner.Name = "MainCorner"
MainCorner.Parent = Main

Profile.Name = "Profile"
Profile.Parent = Main
Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Profile.Position = UDim2.new(0.0570342205, 0, 0.149425298, 0)
Profile.Size = UDim2.new(0, 0, 0, 0)

ProfileCorner.CornerRadius = UDim.new(0, 100)
ProfileCorner.Name = "ProfileCorner"
ProfileCorner.Parent = Profile

ImageProfile.Name = "ImageProfile"
ImageProfile.Parent = Profile
ImageProfile.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ImageProfile.BackgroundTransparency = 0
ImageProfile.Position = UDim2.new(0, 1, 0, 1)
ImageProfile.Size = UDim2.new(0, 0, 0, 0)
ImageProfile.Image = ''

ImageProfileCorner.CornerRadius = UDim.new(0, 100)
ImageProfileCorner.Name = "ImageProfileCorner"
ImageProfileCorner.Parent = ImageProfile

HealthPlayers.Name = "HealthPlayers"
HealthPlayers.Parent = Profile
HealthPlayers.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
HealthPlayers.BackgroundTransparency = 1.000
HealthPlayers.Position = UDim2.new(1.24220526, 0, 0.377586216, 0)
HealthPlayers.Size = UDim2.new(0, 173, 0, 22)
HealthPlayers.Font = Enum.Font.FredokaOne
HealthPlayers.Text = " | N/A"
HealthPlayers.TextColor3 = Color3.fromRGB(255, 255, 0)
HealthPlayers.TextSize = 19.000
HealthPlayers.TextXAlignment = Enum.TextXAlignment.Left
HealthPlayers.TextYAlignment = Enum.TextYAlignment.Bottom


loackplayerslabel.Name = "loackplayerslabel"
loackplayerslabel.Parent = Profile
loackplayerslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loackplayerslabel.BackgroundTransparency = 1.000
loackplayerslabel.Position = UDim2.new(0.1, 0, 1.1, 0)
loackplayerslabel.Size = UDim2.new(0, 0, 0, 0)
loackplayerslabel.Font = Enum.Font.FredokaOne
loackplayerslabel.Text = "Skibidi"
loackplayerslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
loackplayerslabel.TextSize = 0
loackplayerslabel.TextXAlignment = Enum.TextXAlignment.Left
loackplayerslabel.TextYAlignment = Enum.TextYAlignment.Bottom


NamePlayers.Name = "NamePlayers"
NamePlayers.Parent = Profile
NamePlayers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NamePlayers.BackgroundTransparency = 1.000
NamePlayers.Position = UDim2.new(1.24220526, 0, 0.0109195411, 0)
NamePlayers.Size = UDim2.new(0, 0, 0, 0)
NamePlayers.Font = Enum.Font.FredokaOne
NamePlayers.Text = "Văn Thành IOS"
NamePlayers.TextColor3 = Color3.fromRGB(255, 255, 255)
NamePlayers.TextSize = 19.000
NamePlayers.TextXAlignment = Enum.TextXAlignment.Left
NamePlayers.TextYAlignment = Enum.TextYAlignment.Bottom

Healthbar.Name = "Healthbar"
Healthbar.Parent = Profile
Healthbar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Healthbar.Position = UDim2.new(1.23333335, 0, 0.850000024, 0)
Healthbar.Size = UDim2.new(0, 155, 0, 8)

HealthbarCorner.Name = "HealthbarCorner"
HealthbarCorner.Parent = Healthbar

Healthgreen.Name = "Healthgreen"
Healthgreen.Parent = Healthbar
Healthgreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Healthgreen.Size = UDim2.new(0, 155, 0, 8)

HealthgreenCorner.Name = "HealthgreenCorner"
HealthgreenCorner.Parent = Healthgreen

function updateCircle(Fov,colorCircle)
   if circle.__OBJECT_EXISTS then
       circle.Transparency = 1
       circle.Visible = true
       circle.Thickness = 2
       circle.Color = colorCircle
       circle.NumSides = 100
       circle.Radius = (Fov * 6) / 2
       circle.Filled = false
       circle.Position = Vector2.new(mouse.X, mouse.Y + (guiservice.GetGuiInset(guiservice).Y))
   end
end
spawn(function()
    game.GetService(game, "RunService").RenderStepped:Connect(function()
        pcall(function()
        updateCircle(getgenv().setting['Fov'],getgenv().setting['Color'])
        end)
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            for i, v in pairs(players.GetPlayers(players)) do
                if game.Workspace.Characters:FindFirstChild(v.Name) or game.Workspace.Characters:FindFirstChild(v.DisplayName) then
                    if v.Character:FindFirstChild('HumanoidRootPart') then
                        local pos = currentCamera.WorldToViewportPoint(currentCamera, v.Character.HumanoidRootPart.Position)
                        local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                        if magnitude < (getgenv().setting['Fov'] * 6 -8) /2 then
                            if magnitude < math.huge then
                                if (v.Character.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                                    if v.Name ~= game.Players.LocalPlayer.Name then
                                        if getgenv().setting['LockPlayers'] == false then
                                            Playersaimbot = v.Name
                                            PlayersPosition = v.Character.HumanoidRootPart.Position
                                            v.Character.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end)
spawn(function()
    game.GetService(game, "RunService").RenderStepped:Connect(function()
        if Playersaimbot ~= nil then 
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name == Playersaimbot then 
                    if game.Workspace.Characters:FindFirstChild(v.Name) then
                        NamePlayers.Text = " "..v.Name
                        HealthPlayers.Text = " "..math.floor(v.Character.Humanoid.Health).."/"..v.Character.Humanoid.MaxHealth
                        local hp = v.Character.Humanoid.Health/v.Character.Humanoid.MaxHealth
                        pcall(function()
                        Healthgreen:TweenSize(UDim2.new(hp,0,0,8),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.15)
                        end)
                        ImageProfile.Image = game:GetService("Players"):GetUserThumbnailAsync(v.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
                    end
                end
            end
        end
    end)
end)

game:GetService("UserInputService").InputBegan:Connect(function(io, p)
    if io.KeyCode == getgenv().setting['LockPlayersBind'] then
        if getgenv().setting['LockPlayers'] then
            loackplayerslabel.Text = "Lock Players | OFF"
            getgenv().setting['LockPlayers'] = false
            print(getgenv().setting['LockPlayers'])
        else
            loackplayerslabel.Text = "Lock Players | ON"
            getgenv().setting['LockPlayers'] = true
            print(getgenv().setting['LockPlayers'])
        end
    end
    if io.KeyCode == getgenv().setting['resetPlayersBind'] then
        Playersaimbot = nil
        PlayersPosition = nil
        ImageProfile.Image = ''
        NamePlayers.Text = "."
        HealthPlayers.Text = "."
    end
end)

spawn(function()
    while wait() do
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name == Playersaimbot then
                PlayersPosition = v.Character.HumanoidRootPart.Position
            end
        end
    end
end)
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if Playersaimbot ~= nil then
                        args[2] = PlayersPosition
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
mouse.Button1Down:Connect(function()
    pcall(function()
        if Playersaimbot ~= nil then
            local args = {
              [1] = PlayersPosition,
              [2] = game:GetService("Players"):FindFirstChild(Playersaimbot).Character.HumanoidRootPart
            }
        game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
    end
    end)
end)
        end
    })
local Tab1o = MakeTab({Name = "Esp"})
    AddButton(Tab1o, {
     Name = "Esp Name",
    Callback = function()

local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

local function esp(p,cr)
    local h = cr:WaitForChild("Humanoid")
    local hrp = cr:WaitForChild("Head")

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = false 
    text.Font = 3
    text.Size = 16.16
    text.Color = Color3.new(0,255,255)

    local conection
    local conection2
    local conection3

    local function dc()
        text.Visible = false
        text:Remove()
        if conection then
            conection:Disconnect()
            conection = nil 
        end
        if conection2 then
            conection2:Disconnect()
            conection2 = nil 
        end
        if conection3 then
            conection3:Disconnect()
            conection3 = nil 
        end
    end

    conection2 = cr.AncestryChanged:Connect(function(_,parent)
        if not parent then
            dc()
        end
    end)

    conection3 = h.HealthChanged:Connect(function(v)
        if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
            dc()
        end
    end)

    conection = rs.RenderStepped:Connect(function()
        local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
        if hrp_onscreen then
            text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
            text.Text = "[ "..p.Name.." ]"
            text.Visible = true
        else
            text.Visible = false
        end
    end)
end

local function p_added(p)
    if p.Character then
        esp(p,p.Character)
    end
    p.CharacterAdded:Connect(function(cr)
        esp(p,cr)
    end)
end

for i,p in next, ps:GetPlayers() do 
    if p ~= lp then
        p_added(p)
    end
end

ps.PlayerAdded:Connect(p_added)
        end
    })
