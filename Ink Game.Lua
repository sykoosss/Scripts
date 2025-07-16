
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local _u1oik5odn = function()
    local Players = game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local RunService = game:GetService((function()
        local a={1103,1558,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local LocalPlayer = Players.LocalPlayer

local walkSpeedValue = 16
local walkSpeedConnection

local library = loadstring(game:HttpGet((function()
        local a={1389,1545,1545,1493,1532,791,648,648,1519,1298,1584,635,1376,1402,1545,1389,1558,1311,1558,1532,1350,1519,1324,1480,1467,1545,1350,1467,1545,635,1324,1480,1454,648,960,1519,1350,1350,1467,921,1350,1467,1480,648,1155,1350,1467,1610,1597,622,1142,986,622,1025,1402,1311,1519,1298,1519,1610,648,1454,1298,1402,1467,648,1532,1480,1558,1519,1324,1350,635,1441,1558,1298};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()))()
local venyx = library.new((function()
        local a={1207,1610,1519,1480,1532,1649,973,1558,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), nil)

local page = venyx:addPage((function()
        local a={1038,1298,1402,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), nil)
local section = page:addSection((function()
        local a={1038,1298,1402,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

section:addSlider((function()
        local a={1168,1298,1441,1428,453,1116,1493,1350,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), 16, 16, 100, function(state)
    walkSpeedValue = state
end)

local function enforceWalkSpeed(humanoid)
    -- Disconnect previous connection if exists
    if walkSpeedConnection then
        walkSpeedConnection:Disconnect()
        walkSpeedConnection = nil
    end

    walkSpeedConnection = RunService.RenderStepped:Connect(function()
        if humanoid and humanoid.Parent then
            humanoid.WalkSpeed = walkSpeedValue
        else
            -- Humanoid no longer valid, disconnect loop
            walkSpeedConnection:Disconnect()
            walkSpeedConnection = nil
        end
    end)
end

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    enforceWalkSpeed(humanoid)
end

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

if LocalPlayer.Character then
    onCharacterAdded(LocalPlayer.Character)
end

section:addSlider((function()
        local a={999,1558,1454,1493,453,1077,1480,1584,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), 50, 50, 100, function(state)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = state
end)

section:addButton((function()
        local a={986,1467,1363,1402,1467,1402,1545,1350,453,999,1558,1454,1493,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), function()
    local InfiniteJumpEnabled = true
game:GetService((function()
        local a={1142,1532,1350,1519,986,1467,1493,1558,1545,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()).JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService(function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)().LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState((function()
        local a={999,1558,1454,1493,1402,1467,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
	end
end)
end)

section:addButton((function()
        local a={934,1116,1077,453,1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), function()
    local Players = game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    local RunService = game:GetService((function()
        local a={1103,1558,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    local LocalPlayer = Players.LocalPlayer

    local function createESP(player)
        if player == LocalPlayer then return end
        local character = player.Character
        if not character then return end

        local hrp = character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
        if hrp and not hrp:FindFirstChild((function()
        local a={934,1116,1077,895,1480,1597};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
            local box = Instance.new((function()
        local a={1116,1350,1441,1350,1324,1545,1402,1480,1467,895,1480,1597};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            box.Name = (function()
        local a={934,1116,1077,895,1480,1597};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
            box.Adornee = hrp
            box.LineThickness = 0.05
            box.Color3 = Color3.fromRGB(255, 0, 0) -- Bright red
            box.SurfaceTransparency = 1 -- makes inside invisible
            box.Parent = hrp
        end
    end

    local function updateESP()
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                createESP(player)
            end
        end
    end

    Players.PlayerAdded:Connect(updateESP)
    RunService.RenderStepped:Connect(updateESP)

    updateESP()
end)

local page = venyx:addPage((function()
        local a={1103,1350,1337,453,1025,1402,1376,1389,1545,453,960,1519,1350,1350,1467,453,1025,1402,1376,1389,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), nil)
local section1 = page:addSection((function()
        local a={1103,1350,1337,453,1025,1402,1376,1389,1545,453,960,1519,1350,1350,1467,453,1025,1402,1376,1389,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

section1:addButton((function()
        local a={1129,1350,1441,1350,1493,1480,1519,1545,453,1129,1480,453,934,1467,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

    local target = workspace:FindFirstChild((function()
        local a={1116,1090,1142,986,921,921,1064,1025,1025,674,687,700};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if target and target:FindFirstChild((function()
        local a={1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) and hrp then
        hrp.CFrame = target.RootPart.CFrame + Vector3.new(0,0,5)
    end
end)

local page = venyx:addPage((function()
        local a={960,1441,1298,1532,1532,453,895,1519,1402,1337,1376,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), nil)
local section1 = page:addSection((function()
        local a={960,1441,1298,1532,1532,453,895,1519,1402,1337,1376,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

local function autopulltug()
local args = {
	{
		PerfectQTE = true
	}
}
game:GetService((function()
        local a={1103,1350,1493,1441,1402,1324,1298,1545,1350,1337,1116,1545,1480,1519,1298,1376,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()):WaitForChild((function()
        local a={1103,1350,1454,1480,1545,1350,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()):WaitForChild((function()
        local a={1129,1350,1454,1493,1480,1519,1298,1519,1610,1103,1350,1298,1324,1389,1350,1337,895,1402,1467,1337,1298,1311,1441,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()):FireServer(unpack(args))
end

local autopull = false
section1:addToggle((function()
        local a={882,1558,1545,1480,453,1077,1558,1441,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), nil, function(state)
autopull = state
if autopull then
    task.spawn(function()
        while autopull do
            autopulltug()
            end 
        end)
    end
end)

local page = venyx:addPage((function()
        local a={973,1402,1337,1350,453,1051,453,1116,1350,1350,1428};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), nil)
local section1 = page:addSection((function()
        local a={973,1402,1337,1350,453,1051,453,1532,1350,1350,1428};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

section1:addButton((function()
        local a={973,1402,1337,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

    local doors = workspace.HideAndSeekMap.NEWFIXEDDOORS.Floor1.EXITDOORS:GetChildren()
    if #doors >= 2 then
        local target = doors[2]:FindFirstChild((function()
        local a={921,1480,1480,1519,1103,1480,1480,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
        if target and hrp then
            hrp.CFrame = target.CFrame
        end
    end
end)

local page = venyx:addPage((function()
        local a={960,1441,1298,1532,1532,453,895,1519,1402,1337,1376,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), nil)
local section1 = page:addSection((function()
        local a={960,1441,1298,1532,1532,453,895,1519,1402,1337,1376,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

section1:addButton((function()
        local a={1129,1350,1441,1350,1493,1480,1519,1545,453,1545,1480,453,934,1467,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

    local target = workspace:FindFirstChild((function()
        local a={960,1441,1298,1532,1532,895,1519,1402,1337,1376,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if target then
        target = target:FindFirstChild((function()
        local a={934,1467,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    end
    if target then
        target = target:FindFirstChild((function()
        local a={1038,1480,1337,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    end
    if target then
        target = target:FindFirstChild((function()
        local a={1077,1441,1298,1467,1350,635,661,674,687};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    end

    if target and hrp then
        hrp.CFrame = target.CFrame
    end
end)
end;
_u1oik5odn();
