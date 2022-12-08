-- (VOID) : Gui to Lua
-- Version: 1.4

-- Instances:
pcall(function()
	Nexus_Version = 101
	loadstring(game:HttpGet'https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RBX%20Alt%20Manager/Nexus/Nexus.lua')()
	Nexus:Connect()
end)

local maingui = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local topbar = Instance.new("Frame")
local closebuton = Instance.new("TextButton")
local minimizebutton = Instance.new("TextButton")
local altcontroltext = Instance.new("TextLabel")
local execbox = Instance.new("TextBox")
local cmds = Instance.new("TextLabel")
local execbutton = Instance.new("TextButton")
local clearbutton = Instance.new("TextButton")

--Properties:

maingui.Name = "maingui"
if syn then
	maingui.Parent = game:GetService("CoreGui")
	syn.protect_gui(maingui)
elseif KRNL_LOADED then
	maingui.Parent = gethui()
else
	maingui.Parent = game:GetService("CoreGui")
end

maingui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainframe.Name = "mainframe"
mainframe.Parent = maingui
mainframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainframe.BorderSizePixel = 0
mainframe.Position = UDim2.new(0.212831393, 0, 0.245870501, 0)
mainframe.Size = UDim2.new(0, 728, 0, 415)

topbar.Name = "topbar"
topbar.Parent = mainframe
topbar.BackgroundColor3 = Color3.fromRGB(11, 202, 255)
topbar.BorderColor3 = Color3.fromRGB(27, 42, 53)
topbar.BorderSizePixel = 0
topbar.Size = UDim2.new(0, 728, 0, 25)

closebuton.Name = "closebuton"
closebuton.Parent = topbar
closebuton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closebuton.BackgroundTransparency = 1.000
closebuton.BorderSizePixel = 0
closebuton.Position = UDim2.new(0.917582393, 0, 0, 0)
closebuton.Size = UDim2.new(0, 60, 0, 25)
closebuton.Font = Enum.Font.SourceSans
closebuton.Text = "X"
closebuton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebuton.TextScaled = true
closebuton.TextSize = 14.000
closebuton.TextWrapped = true

minimizebutton.Name = "minimizebutton"
minimizebutton.Parent = topbar
minimizebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimizebutton.BackgroundTransparency = 1.000
minimizebutton.BorderSizePixel = 0
minimizebutton.Position = UDim2.new(0.835164785, 0, 0, 0)
minimizebutton.Size = UDim2.new(0, 60, 0, 25)
minimizebutton.Font = Enum.Font.SourceSans
minimizebutton.Text = "-"
minimizebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizebutton.TextScaled = true
minimizebutton.TextSize = 14.000
minimizebutton.TextWrapped = true

altcontroltext.Name = "altcontroltext"
altcontroltext.Parent = topbar
altcontroltext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
altcontroltext.BackgroundTransparency = 1.000
altcontroltext.BorderSizePixel = 0
altcontroltext.Position = UDim2.new(0.0206043962, 0, 0, 0)
altcontroltext.Size = UDim2.new(0, 235, 0, 25)
altcontroltext.Font = Enum.Font.SourceSans
altcontroltext.Text = "alt control"
altcontroltext.TextColor3 = Color3.fromRGB(0, 0, 0)
altcontroltext.TextScaled = true
altcontroltext.TextSize = 14.000
altcontroltext.TextWrapped = true
altcontroltext.TextXAlignment = Enum.TextXAlignment.Left

execbox.Name = "execbox"
execbox.Parent = mainframe
execbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
execbox.Position = UDim2.new(0.0206043962, 0, 0.0843373463, 0)
execbox.Size = UDim2.new(0, 469, 0, 260)
execbox.Font = Enum.Font.SourceSans
execbox.LineHeight = 0.750
execbox.PlaceholderColor3 = Color3.fromRGB(125, 125, 125)
execbox.PlaceholderText = "commands here"
execbox.Text = ""
execbox.TextColor3 = Color3.fromRGB(0, 0, 0)
execbox.TextSize = 14.000
execbox.TextXAlignment = Enum.TextXAlignment.Left
execbox.TextYAlignment = Enum.TextYAlignment.Top

cmds.Name = "cmds"
cmds.Parent = mainframe
cmds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmds.Position = UDim2.new(0.684065938, 0, 0.0843373463, 0)
cmds.Size = UDim2.new(0, 215, 0, 365)
cmds.Font = Enum.Font.SourceSansBold
cmds.LineHeight = 0.990
cmds.Text = "-lua // executes lua\\n-reset // resets all\\n-savecpu // saves cpu ❗MUST USE SYNAPSE FPS UNLOCKER❗\\n-iy_admin // infinite yield\\n-iy // infinite yield\\n-infyield // infinite yield\\n-cmds // useless\\n-tohost // brings all to host\\n-repeat // repeats ANY message BY host\\n-host // host user ❗CASE SENSETIVE AND REAL USER ONLY❗\\n-clantag // kaiju paradise clantag\\n-kaijufarm // farm for kaiju\\n-follow // follows host\\n-unfollow // unfollows host\\n-exit // exits\\n-reset // resets alts\\n-slowgoto // tweens to host slowly\\n-funnyjump // funny jump with 1fps\\n-timefarm // fuck nigggers // steal time from others thing to farm\\n-pre // no shake thing idk\\n-raid // spams your name /default host name\\n-unraid // unspams\\n-raidname // the raid command name\\n-sus // bang command"
cmds.TextColor3 = Color3.fromRGB(0, 0, 0)
cmds.TextScaled = true
cmds.TextSize = 22.000
cmds.TextWrapped = true
cmds.TextXAlignment = Enum.TextXAlignment.Left
cmds.TextYAlignment = Enum.TextYAlignment.Top

execbutton.Name = "execbutton"
execbutton.Parent = mainframe
execbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
execbutton.Position = UDim2.new(0.0206043962, 0, 0.739759028, 0)
execbutton.Size = UDim2.new(0, 244, 0, 93)
execbutton.Font = Enum.Font.SourceSans
execbutton.Text = "execute"
execbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
execbutton.TextSize = 14.000

clearbutton.Name = "clearbutton"
clearbutton.Parent = mainframe
clearbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clearbutton.Position = UDim2.new(0.381868124, 0, 0.739759028, 0)
clearbutton.Size = UDim2.new(0, 206, 0, 93)
clearbutton.Font = Enum.Font.SourceSans
clearbutton.Text = "clear"
clearbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
clearbutton.TextSize = 14.000

clearbutton.MouseButton1Down:Connect(function()
	execbox.Text = ""
end)

execbutton.MouseButton1Down:Connect(function()
	Nexus:Echo(execbox.Text)
end)

closebuton.MouseButton1Down:Connect(function()
	maingui:Destroy()
end)

minimizebutton.MouseButton1Down:Connect(function()
	execbox.Text = "just drag down lol 3"
	wait(1)
	execbox.Text = "just drag down lol 2"
	wait(1)
	execbox.Text = "just drag down lol 1"
	wait(1)
	execbox.Text = ""
end)
