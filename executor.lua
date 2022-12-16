--minor fix
local UserInputService = game:GetService("UserInputService")
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
mainframe.Draggable = true
mainframe.Active = true

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

altcontroltext.Name = "altcontroltext"
altcontroltext.Parent = topbar
altcontroltext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
altcontroltext.BackgroundTransparency = 1.000
altcontroltext.BorderSizePixel = 0
altcontroltext.Position = UDim2.new(0.0206043962, 0, 0, 0)
altcontroltext.Size = UDim2.new(0, 235, 0, 25)
altcontroltext.Font = Enum.Font.SourceSans
altcontroltext.Text = "executor like elysian"
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
cmds.Text = "inbound things: iy"
cmds.TextColor3 = Color3.fromRGB(0, 0, 0)
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
  if execbox.Text:lower() == "iy" then
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  else
	loadstring(execbox.Text)()
  end
end)

closebuton.MouseButton1Down:Connect(function()
	maingui:Destroy()
end)
UserInputService.InputBegan:Connect(function(input,gameProccesedEvent)
	if input.KeyCode == Enum.KeyCode.Insert then -- keybind for when it hides and shows
		mainframe.Visible = not mainframe.Visible
	end
end)
