--[[
--Cool For Remembering--

GetDescendants()
for i,v in pairs()
_G.Looping
Vector3.new()
UDim2.new()
:Destroy()

]]--

local Config = {
    WindowName = "Necoware Beta",
	Color = Color3.fromRGB(255,0,0),
	Keybind = Enum.KeyCode.Insert
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Home")

local Section1 = Tab1:CreateSection("| Home |")
----HomePage----

local Label1 = Section1:CreateLabel("Necoware.kys was made by: puqvs#0001")

local Label1 = Section1:CreateLabel([[Thanks too: rat#8611 & cirno &,
Memester (miss u) for, being helpful,
highly respected by me, cute asff <33]])

local Label1 = Section1:CreateLabel([[Thank you guys for support me,
This whole time, I love you man ong]])

local Label1 = Section1:CreateLabel([[Again, thank you:
rat, cirno, memester for fucking,
being there for me, I really,
really fucking love you guys <3]])

local Section1 = Tab1:CreateSection("Account Info")

local Label1 = Section1:CreateLabel([[Your Roblox Username Is:
]] .. game.Players.LocalPlayer.Name)

local Label1 = Section1:CreateLabel([[Your Roblox DisplayName Is:
]] .. game.Players.LocalPlayer.DisplayName)

local Label1 = Section1:CreateLabel([[Your Roblox UserId Is:
]] .. game.Players.LocalPlayer.UserId)

local Label1 = Section1:CreateLabel([[Your Roblox AccountAge Is:
]] .. game.Players.LocalPlayer.AccountAge)

local Section1 = Tab1:CreateSection("Donations")

local Button1 = Section1:CreateButton("Donate too: puqvs#0001 (Robux)", function()
	print("Not out yet!")
end)

local Button2 = Section1:CreateButton("Donate too: rat#8611 (Robux)", function()
	print("Not out yet!")
end)

local Button3 = Section1:CreateButton([[buy a coffee too: 
	puqvs#0001 (PayPal | Cashapp)]], function()
	print("Not out yet!")
end)

local Button4 = Section1:CreateButton("Donate too: rat#8611 (PayPal | Cashapp)", function()
	print("Not out yet!")
end)

local Button5 = Section1:CreateButton("Buy a pc too: rat#8611 (PayPal | Cashapp)", function()
	print("Not out yet!")
end)

local Button6 = Section1:CreateButton([[Buy pc-specs too: 
	puqvs#0001 (PayPal | Cashapp)]], function()
	print("Not out yet!")
end)

Button1:AddToolTip("Not out yet!")

Button2:AddToolTip("Not out yet!")

Button3:AddToolTip("Not out yet!")

Button4:AddToolTip("Not out yet!")

Button5:AddToolTip("Not out yet!")

Button6:AddToolTip("Not out yet!")

local Section1 = Tab1:CreateSection("Premium Checker")

local Label1 = Section1:CreateLabel("| [⭐] Premium Checker [⭐] |")

local TextBox1 = Section1:CreateTextBox("Insert Key", "Key", false, function(v)
    _G.Key = v
end)

local Button1 = Section1:CreateButton("Check key (Press F9)", function()
    if _G.Key == "Test" then
        print([[Send this into Make a Ticket:
        https://roblox.com/users/]] .. game.Players.LocalPlayer.UserId .. [[/profile]])
    end

    if _G.Key ~= "Test" then
        print("Not Whitelisted!")
    end
end)

local TextLabel1 = Section1:CreateLabel([[Premium Uses A Different Script,
This is just to check for Whitelisting Proof.]])

local Tab1 = Window:CreateTab("Protections")

local Section1 = Tab1:CreateSection("Protections")

local Label1 = Section1:CreateLabel("| [⚙] Free Protections [⚙] |")

local Button1 = Section1:CreateButton("Remove NameTag", function(v)
    for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if v:IsA("BillboardGui") then
            v:Destroy()
        end
    end

    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v ~= "BillboardGui" then
            print("uh oh!")
        end
    end
end)

local Button1 = Section1:CreateButton("Remove Limbs", function(v)
    if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        game.Players.LocalPlayer.Character["Left Arm"]:Destroy()
        game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
        game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
        game.Players.LocalPlayer.Character["Right Leg"]:Destroy()
    end

    if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
        game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
        game.Players.LocalPlayer.Character.LeftHand:Destroy()
        game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
        game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
        game.Players.LocalPlayer.Character.RightHand:Destroy()
        game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
        game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
        game.Players.LocalPlayer.Character.LeftFoot:Destroy()
        game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
        game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
        game.Players.LocalPlayer.Character.RightFoot:Destroy()
    end
end)

local Button1 = Section1:CreateButton("Destroy Accessorys", function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Accessory") then
            v:Destroy()
        end
    end
end)

local Button1 = Section1:CreateButton("Destroy Face", function()
    for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if v:IsA("Decal") then
            v:Destroy()
        end
    end
end)

local Button1 = Section1:CreateButton("Destroy HeadMesh (R6)", function()
    for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if v:IsA("SpecialMesh") then
            v:Destroy()
        end
    end
end)

local Section1 = Tab1:CreateSection("Character Protections")

local Label1 = Section1:CreateLabel("| [⚙] Free Character Protections [⚙] |")

local DropDown1 = Section1:CreateDropdown("Character Materials", {"Plastic", "ForceField", "WoodPlanks"}, function(v)
    _G.Material = v
    
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Part") then
            v.Material = _G.Material
        end
    end
end)

local DropDown1 = Section1:CreateDropdown("Character Materials", {"Plastic", "ForceField", "WoodPlanks"}, function(v)
    _G.AccMaterial = v
    
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Accessory") then
            v.Handle.Material = _G.AccMaterial
        end
    end
end)

local DropDown1 = Section1:CreateDropdown("Materials Color", {"Red", "Blue", "Green", "Pink", "Purple", "Black", "Brown", "Cyan"}, function(v)
    if v == "Red" then
        _G.ColorR = 255
        _G.ColorG = 0
        _G.ColorB = 0

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Handle.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Blue" then
        _G.ColorR = 0
        _G.ColorG = 0
        _G.ColorB = 255

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Handle.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Green" then
        _G.ColorR = 0
        _G.ColorG = 255
        _G.ColorB = 0

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Handle.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Pink" then
        _G.ColorR = 255
        _G.ColorG = 0
        _G.ColorB = 234

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Handle.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Purple" then
        _G.ColorR = 111
        _G.ColorG = 0
        _G.ColorB = 255

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Handle.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Black" then
        _G.ColorR = 0
        _G.ColorG = 0
        _G.ColorB = 0

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Handle.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Brown" then
        _G.ColorR = 69
        _G.ColorG = 57
        _G.ColorB = 50

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Handle.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Cyan" then
        _G.ColorR = 0
        _G.ColorG = 255
        _G.ColorB = 255

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Handle.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end
end)

local DropDown1 = Section1:CreateDropdown("Characters Color", {"Red", "Blue", "Green", "Pink", "Purple", "Black", "Brown", "Cyan"}, function(v)
    if v == "Red" then
        _G.ColorR = 255
        _G.ColorG = 0
        _G.ColorB = 0

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Blue" then
        _G.ColorR = 0
        _G.ColorG = 0
        _G.ColorB = 255

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Green" then
        _G.ColorR = 0
        _G.ColorG = 255
        _G.ColorB = 0

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Pink" then
        _G.ColorR = 255
        _G.ColorG = 0
        _G.ColorB = 234

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Purple" then
        _G.ColorR = 111
        _G.ColorG = 0
        _G.ColorB = 255

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Black" then
        _G.ColorR = 0
        _G.ColorG = 0
        _G.ColorB = 0

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Brown" then
        _G.ColorR = 69
        _G.ColorG = 57
        _G.ColorB = 50

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v == "Cyan" then
        _G.ColorR = 0
        _G.ColorG = 255
        _G.ColorB = 255

        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end
end)

local Tab1 = Window:CreateTab("Undertale")

local Section1 = Tab1:CreateSection("Undertale")

local Label1 = Section1:CreateLabel("| [🔧] Undertale, Free, Toriel [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.SizeX = 5
        _G.SizeY = 0.3
        _G.SizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.SizeX = 30
        _G.SizeY = 0.3
        _G.SizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.SizeX = 300
        _G.SizeY = 0.3
        _G.SizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.Transp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.CanColl = v
end)

local Toggle = Section1:CreateToggle("Toriel", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Toriel" then
            v.HumanoidRootPart.Size = Vector3.new(_G.SizeX, _G.SizeY, _G.SizeX)
            v.HumanoidRootPart.CanCollide = _G.CanColl
            v.HumanoidRootPart.Transparency = _G.Transp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Undertale")

local Label1 = Section1:CreateLabel("| [🔧] Undertale, Free, Papyrus [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.PapSizeX = 5
        _G.PapSizeY = 0.3
        _G.PapSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.PapSizeX = 30
        _G.PapSizeY = 0.3
        _G.PapSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.PapSizeX = 300
        _G.PapSizeY = 0.3
        _G.PapSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.PapTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.PapCanColl = v
end)

local Toggle = Section1:CreateToggle("Papyrus", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Papyrus" then
            v.HumanoidRootPart.Size = Vector3.new(_G.PapSizeX, _G.PapSizeY, _G.PapSizeX)
            v.HumanoidRootPart.CanCollide = _G.PapCanColl
            v.HumanoidRootPart.Transparency = _G.PapTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Undertale")

local Label1 = Section1:CreateLabel("| [🔧] Undertale, Free, Undyne [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.UndySizeX = 5
        _G.UndySizeY = 0.3
        _G.UndySizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.UndySizeX = 30
        _G.UndySizeY = 0.3
        _G.UndySizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.UndySizeX = 300
        _G.UndySizeY = 0.3
        _G.UndySizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.UndyTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.UndyCanColl = v
end)

local Toggle = Section1:CreateToggle("Undyne", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Undyne" then
            v.HumanoidRootPart.Size = Vector3.new(_G.UndySizeX, _G.UndySizeY, _G.UndySizeX)
            v.HumanoidRootPart.CanCollide = _G.UndyCanColl
            v.HumanoidRootPart.Transparency = _G.UndyTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Undertale")

local Label1 = Section1:CreateLabel("| [🔧] Undertale, Free, Muffet [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.MufSizeX = 5
        _G.MufSizeY = 0.3
        _G.MufSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.MufSizeX = 30
        _G.MufSizeY = 0.3
        _G.MufSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.MufSizeX = 300
        _G.MufSizeY = 0.3
        _G.MufSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.MufTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.MufCanColl = v
end)

local Toggle = Section1:CreateToggle("Muffet", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Muffet" then
            v.HumanoidRootPart.Size = Vector3.new(_G.MufSizeX, _G.MufSizeY, _G.MufSizeX)
            v.HumanoidRootPart.CanCollide = _G.MufCanColl
            v.HumanoidRootPart.Transparency = _G.MufTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Undertale")

local Label1 = Section1:CreateLabel("| [🔧] Undertale, Free, Sans [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.SanSizeX = 5
        _G.SanSizeY = 0.3
        _G.SanSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.SanSizeX = 30
        _G.SanSizeY = 0.3
        _G.SanSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.SanSizeX = 300
        _G.SanSizeY = 0.3
        _G.SanSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.SanTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.SanCanColl = v
end)

local Toggle = Section1:CreateToggle("Sans", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Sans" then
            v.HumanoidRootPart.Size = Vector3.new(_G.SanSizeX, _G.SanSizeY, _G.SanSizeX)
            v.HumanoidRootPart.CanCollide = _G.SanCanColl
            v.HumanoidRootPart.Transparency = _G.SanTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Undertale")

local Label1 = Section1:CreateLabel("| [🔧] Undertale, Free, Asgore [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.AsgSizeX = 5
        _G.AsgSizeY = 0.3
        _G.AsgSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.AsgSizeX = 30
        _G.AsgSizeY = 0.3
        _G.AsgSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.AsgSizeX = 300
        _G.AsgSizeY = 0.3
        _G.AsgSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.AsgTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.AsgCanColl = v
end)

local Toggle = Section1:CreateToggle("Asgore", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Asgore" then
            v.HumanoidRootPart.Size = Vector3.new(_G.AsgSizeX, _G.AsgSizeY, _G.AsgSizeX)
            v.HumanoidRootPart.CanCollide = _G.AsgCanColl
            v.HumanoidRootPart.Transparency = _G.AsgTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Undertale")

local Label1 = Section1:CreateLabel("| [🔧] Undertale, Free, Asriel [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,5,5", "Semi-Rage: 30,30,30", "Rage: 300,300,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.AsSizeX = 5
        _G.AsizeY = 5
        _G.AsSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.AsizeX = 30
        _G.AsSizeY = 30
        _G.SizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.AsSizeX = 300
        _G.AsSizeY = 300
        _G.AsSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.AsTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.AsCanColl = v
end)

local Toggle = Section1:CreateToggle("Asriel", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Asriel" then
            v.HumanoidRootPart.Size = Vector3.new(_G.AsSizeX, _G.AsSizeY, _G.AsSizeX)
            v.HumanoidRootPart.CanCollide = _G.AsCanColl
            v.HumanoidRootPart.Transparency = _G.AsTransp

        else

            print("Not found!")
        end
    end
end)

local Tab1 = Window:CreateTab("UnderFell")

local Section1 = Tab1:CreateSection("UnderFell")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, UF Toriel [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.UFTSizeX = 5
        _G.UFTSizeY = 0.3
        _G.UFTSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.UFTSizeX = 30
        _G.UFTSizeY = 0.3
        _G.UFTSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.UFTSizeX = 300
        _G.UFTSizeY = 0.3
        _G.UFTSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.UFTTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.UFTCanColl = v
end)

local Toggle = Section1:CreateToggle("UnderFell Toriel", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "UnderFell Toriel" then
            v.HumanoidRootPart.Size = Vector3.new(_G.UFTSizeX, _G.UFTSizeY, _G.UFTSizeZ)
            v.HumanoidRootPart.CanCollide = _G.UFTCanColl
            v.HumanoidRootPart.Transparency = _G.UFTTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, UF Papyrus [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.UFPSizeX = 5
        _G.UFPSizeY = 0.3
        _G.UFPSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.UFPSizeX = 30
        _G.UFPSizeY = 0.3
        _G.UFPSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.UFPSizeX = 300
        _G.UFPSizeY = 0.3
        _G.UFPSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.UFPTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.UFPCanColl = v
end)

local Toggle = Section1:CreateToggle("UnderFell Papyrus", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "UnderFell Papyrus" then
            v.HumanoidRootPart.Size = Vector3.new(_G.UFPSizeX, _G.UFPSizeY, _G.UFPSizeZ)
            v.HumanoidRootPart.CanCollide = _G.UFPCanColl
            v.HumanoidRootPart.Transparency = _G.UFPTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, UF Undyne [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.UFUSizeX = 5
        _G.UFUSizeY = 0.3
        _G.UFUSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.UFUSizeX = 30
        _G.UFUSizeY = 0.3
        _G.UFUSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.UFUSizeX = 300
        _G.UFUSizeY = 0.3
        _G.UFUSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.UFUTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.UFUCanColl = v
end)

local Toggle = Section1:CreateToggle("UnderFell Undyne", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "UnderFell Undyne" then
            v.HumanoidRootPart.Size = Vector3.new(_G.UFUSizeX, _G.UFUSizeY, _G.UFUSizeZ)
            v.HumanoidRootPart.CanCollide = _G.UFUCanColl
            v.HumanoidRootPart.Transparency = _G.UFUTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, UF Muffet [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.UFMSizeX = 5
        _G.UFMSizeY = 0.3
        _G.UFMSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.UFMSizeX = 30
        _G.UFMSizeY = 0.3
        _G.UFMSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.UFMSizeX = 300
        _G.UFMSizeY = 0.3
        _G.UFMSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.UFMTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.UFMCanColl = v
end)

local Toggle = Section1:CreateToggle("UnderFell Muffet", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "UnderFell Muffet" then
            v.HumanoidRootPart.Size = Vector3.new(_G.UFMSizeX, _G.UFMSizeY, _G.UFMSizeZ)
            v.HumanoidRootPart.CanCollide = _G.UFMCanColl
            v.HumanoidRootPart.Transparency = _G.UFMTransp

        else

            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell")

local Label1 = Section1:CreateLabel([[| We're not adding UF Sans for now, 
Sorry. |]])


local Section1 = Tab1:CreateSection("UnderFell")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, UF Asgore [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.UFASizeX = 5
        _G.UFASizeY = 0.3
        _G.UFASizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.UFASizeX = 30
        _G.UFASizeY = 0.3
        _G.UFASizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.UFASizeX = 300
        _G.UFASizeY = 0.3
        _G.UFASizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.UFATransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.UFACanColl = v
end)

local Toggle = Section1:CreateToggle("UnderFell Asgore", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "UnderFell Asgore" then
            v.HumanoidRootPart.Size = Vector3.new(_G.UFASizeX, _G.UFASizeY, _G.UFASizeZ)
            v.HumanoidRootPart.CanCollide = _G.UFACanColl
            v.HumanoidRootPart.Transparency = _G.UFATransp

        else
            print("Not found!")
        end
    end
end)

local Tab1 = Window:CreateTab("Tem Trials")

local Section1 = Tab1:CreateSection("Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem Toriel [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TTSizeX = 5
        _G.TTSizeY = 0.3
        _G.TTSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TTSizeX = 30
        _G.TTSizeY = 0.3
        _G.TTSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TTSizeX = 300
        _G.TTSizeY = 0.3
        _G.TTSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TTTransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TTTCanColl = v
end)

local Toggle = Section1:CreateToggle("Tem Toriel", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem Toriel" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TTSizeX, _G.TTSizeY, _G.TTSizeZ)
            v.HumanoidRootPart.CanCollide = _G.TTTCanColl
            v.HumanoidRootPart.Transparency = _G.TTTransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem Papyrus [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TPSizeX = 5
        _G.TPSizeY = 0.3
        _G.TPSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TPSizeX = 30
        _G.TPSizeY = 0.3
        _G.TPSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TPSizeX = 300
        _G.TPSizeY = 0.3
        _G.TPSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TPransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TPCanColl = v
end)

local Toggle = Section1:CreateToggle("Tem Papyrus", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem Papyrus" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TPSizeX, _G.TPSizeY, _G.TPSizeZ)
            v.HumanoidRootPart.CanCollide = _G.TPCanColl
            v.HumanoidRootPart.Transparency = _G.TPransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem Muffet [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TMSizeX = 5
        _G.TMSizeY = 0.3
        _G.TMSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TMSizeX = 30
        _G.TMSizeY = 0.3
        _G.TMSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TMSizeX = 300
        _G.TMSizeY = 0.3
        _G.TMSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TMransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TMCanColl = v
end)

local Toggle = Section1:CreateToggle("Tem Muffet", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem Muffet" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TMSizeX, _G.TMSizeY, _G.TMSizeZ)
            v.HumanoidRootPart.CanCollide = _G.TMCanColl
            v.HumanoidRootPart.Transparency = _G.TMransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem Asgore [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TASizeX = 5
        _G.TASizeY = 0.3
        _G.TASizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TASizeX = 30
        _G.TASizeY = 0.3
        _G.TASizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TASizeX = 300
        _G.TASizeY = 0.3
        _G.TASizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TAransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TACanColl = v
end)

local Toggle = Section1:CreateToggle("Tem Asgore", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem Asgore" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TASizeX, _G.TASizeY, _G.TASizeZ)
            v.HumanoidRootPart.CanCollide = _G.TACanColl
            v.HumanoidRootPart.Transparency = _G.TAransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem Undyne [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TUSizeX = 5
        _G.TUSizeY = 0.3
        _G.TUSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TUSizeX = 30
        _G.TUSizeY = 0.3
        _G.TUSizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TUSizeX = 300
        _G.TUSizeY = 0.3
        _G.TUSizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TAransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TACanColl = v
end)

local Toggle = Section1:CreateToggle("Tem Undyne", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem Undyne" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TUSizeX, _G.TUSizeY, _G.TUSizeZ)
            v.HumanoidRootPart.CanCollide = _G.TUCanColl
            v.HumanoidRootPart.Transparency = _G.TUransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem UF Toriel [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TUTASizeX = 5
        _G.TUTASizeY = 0.3
        _G.TUTASizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TUTASizeX = 30
        _G.TUTASizeY = 0.3
        _G.TUTASizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TUTASizeX = 300
        _G.TUTASizeY = 0.3
        _G.TUTASizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TUTtransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TUTCanColl = v
end)

local Toggle = Section1:CreateToggle("Tem UnderFell Toriel", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem UnderFell Toriel" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TUTASizeX, _G.TUTASizeY, _G.TUTASizeZ)
            v.HumanoidRootPart.CanCollide = _G.TUTCanColl
            v.HumanoidRootPart.Transparency = _G.TUTtransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem UF Papyrus [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TUPASizeX = 5
        _G.TUPASizeY = 0.3
        _G.TUPSizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TUPASizeX = 30
        _G.TUPASizeY = 0.3
        _G.TUPASizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TUPASizeX = 300
        _G.TUPASizeY = 0.3
        _G.TUTASizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TUPtransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TUPCanColl = v
end)

local Toggle = Section1:CreateToggle("Tem UnderFell Papyrus", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem UnderFell Papyrus" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TUPASizeX, _G.TUPASizeY, _G.TUPASizeZ)
            v.HumanoidRootPart.CanCollide = _G.TUPCanColl
            v.HumanoidRootPart.Transparency = _G.TUPtransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem UF Muffet [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TUMASizeX = 5
        _G.TUMASizeY = 0.3
        _G.TUMASizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TUMASizeX = 30
        _G.TUMASizeY = 0.3
        _G.TUMASizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TUMASizeX = 300
        _G.TUMASizeY = 0.3
        _G.TUMASizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TUMtransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TUMCanColl = v
end)

local Toggle = Section1:CreateToggle("Tem UnderFell Muffet", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem UnderFell Muffet" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TUMASizeX, _G.TUMASizeY, _G.TUMASizeZ)
            v.HumanoidRootPart.CanCollide = _G.TUMCanColl
            v.HumanoidRootPart.Transparency = _G.TUMtransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem UF Asgore [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TUFAASizeX = 5
        _G.TUFAASizeY = 0.3
        _G.TUFAASizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TUFAASizeX = 30
        _G.TUFAASizeY = 0.3
        _G.TUFAASizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TUFAASizeX = 300
        _G.TUFAASizeY = 0.3
        _G.TUFAASizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TUFAtransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TUFACanColl = v
end)

local Toggle = Section1:CreateToggle("Tem UnderFell Asgore", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem UnderFell Asgore" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TUFAASizeX, _G.TUFAASizeY, _G.TUFAASizeZ)
            v.HumanoidRootPart.CanCollide = _G.TUFACanColl
            v.HumanoidRootPart.Transparency = _G.TUFAtransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("UnderFell Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Tem UF Asgore [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TUUASizeX = 5
        _G.TUUAASizeY = 0.3
        _G.TUUAASizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TUUAASizeX = 30
        _G.TUUAASizeY = 0.3
        _G.TUUAASizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TUUAASizeX = 300
        _G.TUUAASizeY = 0.3
        _G.TUUAASizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TUUAtransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TUUACanColl = v
end)

local Toggle = Section1:CreateToggle("Tem UnderFell Undyne", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Tem UnderFell Undyne" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TUUAASizeX, _G.TUUAASizeY, _G.TUUAASizeZ)
            v.HumanoidRootPart.CanCollide = _G.TUUACanColl
            v.HumanoidRootPart.Transparency = _G.TUUAtransp

        else
            print("Not found!")
        end
    end
end)

local Section1 = Tab1:CreateSection("Betty Tem Trials")

local Label1 = Section1:CreateLabel("| [🔧] UnderFell, Free, Betty [🔧] |")

local DropDown1 = Section1:CreateDropdown("Hitbox Size", {"Legit: 5,0.3,5", "Semi-Rage: 30,0.3,30", "Rage: 300,0.3,300"}, function(v)
    if v == "Legit: 5,0,5" then
        _G.TBASizeX = 5
        _G.TBAASizeY = 0.3
        _G.TBAASizeZ = 5
    end

    if v == "Semi-Rage: 30,0,30" then
        _G.TBAASizeX = 30
        _G.TBAASizeY = 0.3
        _G.TBAASizeZ = 30
    end

    if v == "Rage: 300,0,300" then
        _G.TBAASizeX = 300
        _G.TBAASizeY = 0.3
        _G.TBAASizeZ = 300
    end
end)

local Slider1 = Section1:CreateSlider("Hitbox Transparency", 0,1,nil,false, function(v)
    _G.TBAtransp = v
end)

local Toggle1 = Section1:CreateToggle("CanCollide | Fling Boss", false, function(v)
    _G.TBACanColl = v
end)

local Toggle = Section1:CreateToggle("Betty Noire", false, function(v)
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v == "Betty Noire" then
            v.HumanoidRootPart.Size = Vector3.new(_G.TBAASizeX, _G.TBAASizeY, _G.TBAASizeZ)
            v.HumanoidRootPart.CanCollide = _G.TBACanColl
            v.HumanoidRootPart.Transparency = _G.TBAtransp

        else
            print("Not found!")
        end
    end
end)


local Tab1 = Window:CreateTab("⭐Premium⭐")

local Section1 = Tab1:CreateSection("⭐Premium⭐ Features")

local Label1 = Section1:CreateLabel("| [⭐]Premium[⭐] |")

local Label1 = Section1:CreateLabel([[NecoWare Premium Includes:
Custom Presets Which Users Have Made,
Custom Configs Which Users Have Made,
Custom Themes Which Users Have Made,
Customizable Boss Hitboxes,
Paid Trolling Features,
Crash Server (MAYBE),
Dupe Tools (MAYBE),
Fully AutoMatic AutoFarms,
More Protections,
And Much More In later Versions.]])