getgenv().host = "BooIeanVaIue" --main host / sudo
getgenv().host2 = nil --friend host / no sudo
getgenv().chatrepeat = true -- repeats or nah
getgenv().fpscap = 60 -- fps cap
getgenv().raidname = host --raid spam name
getgenv().alts = {
    alt1 = "",
    alt2 = "",
    alt3 = "",
    alt4 = "",
    alt5 = ""
}

---obf lower!!!

getgenv().exitbool = false
getgenv().Attack = false
local plr = game:GetService("Players").LocalPlayer
if plr.Name ~= host then
loadstring(game:HttpGet('https://raw.githubusercontent.com/SwimPaste/rbxscripts/main/antiban.lua'))()
setfpscap(fpscap)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
execCmd("antiafk")
local chat = function(MSG) -- creo thing
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(MSG, "All")
end
local ChatEvents = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents", math.huge)
local messageDoneFiltering = ChatEvents:WaitForChild("OnMessageDoneFiltering", math.huge)
if messageDoneFiltering:IsA("RemoteEvent") then
    messageDoneFiltering.OnClientEvent:Connect(function(data)
        if data ~= nil then
            local player = tostring(data.FromSpeaker)
            local message = tostring(data.Message)
            local originalchannel = tostring(data.OriginalChannel)
            if string.find(originalchannel, "To ") then
                message = "/w " .. string.gsub(originalchannel, "To ", "") .. " " .. message
            end
            if originalchannel == "Team" then
                message = "/team " .. message
            end
            eventEditor.FireEvent("OnChatted", player, message)

            --[[
                SPECIAL EVENTS
            ]]--

            if player == host and chatrepeat == true and message:lower():sub(1,1)==" " then
                execCmd("say "..message)
            end
            
            -----END-----

            --[[
                HOST DIRECTORY LOWER
            ]]--
            if player == host and message:lower():sub(1,4) == "-say" then
                execCmd("say "..message:sub(6))
            end
            if player == host and message:lower():sub(1,4) == "-sus" then
                execCmd("bang "..message:sub(6))
            end
            if player == host and message:lower():sub(1,10) == "-websocket" then
                execCmd("say visit swimpaste on github for websocket edition")
            end
            if player == host and message:lower():sub(1,9) == "-raidname" then
                getgenv().raidname = message:upper():sub(11)
            end
            if player == host and message:lower():sub(1,5) == "-raid" then
                execCmd("spamspeed 3")
                execCmd("spam SERVER RAIDED BY "..raidname.. " /// SERVER RAIDED BY"..raidname.. " /// SERVER RAIDED BY"..raidname.. " /// SERVER RAIDED BY"..raidname.. " /// SERVER RAIDED BY"..raidname.. " /// SERVER RAIDED BY"..raidname.. " /// SERVER RAIDED BY"..raidname.. " /// SERVER RAIDED BY"..raidname)
            end
            if player == host and message:lower():sub(1,7) == "-unraid" then
                execCmd("unspam")
            end
            if player == host and message:lower() == "-farmkaijuparadiseyesiconfirmthat" then
                while wait() do
                    execCmd("goto "..host)
                    wait(0.05)
                    execCmd("noclip")
                    wait(0.05)
                    local oldPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    execCmd("noclip")
                    wait(0.05)
                    for i=1,60 do
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.406143, -12.3250103, -424.536591)
                        wait(0.3)
                    end
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
                    wait(60)
                end
            end
            if player == host and message:lower():sub(1,7) == "-german" then
                for i, v in pairs(alts) do
                    if plr.Name == v then
                        if tostring(i) == "alt1" then
                            execCmd("say 🛑🛑📰📰🛑🛑🛑🛑🛑🛑")
                            wait(0.1)
                            execCmd("say 🛑🛑📰📰🛑🛑🛑🛑🛑🛑")
                        end
                        if tostring(i) == "alt2" then
                            wait(0.15)
                            execCmd("say 🛑🛑📰📰🛑🛑📰📰📰📰")
                            wait(0.1)
                            execCmd("say 🛑🛑📰📰🛑🛑📰📰📰📰")
                        end
                        if tostring(i) == "alt3" then
                            wait(0.30)
                            execCmd("say 🛑🛑🛑🛑🛑🛑🛑🛑🛑🛑")
                            wait(0.1)
                            execCmd("say 🛑🛑🛑🛑🛑🛑🛑🛑🛑🛑")
                        end
                        if tostring(i) == "alt4" then
                            wait(0.45)
                            execCmd("say 📰📰📰📰🛑🛑📰📰🛑🛑")
                            wait(0.1)
                            execCmd("say 📰📰📰📰🛑🛑📰📰🛑🛑")
                        end
                        if tostring(i) == "alt5" then
                            wait(0.70)
                            execCmd("say 🛑🛑🛑🛑🛑🛑📰📰🛑🛑")
                            wait(0.1)
                            execCmd("say 🛑🛑🛑🛑🛑🛑📰📰🛑🛑")
                        end
                    end
                end
            end
            if player == host and message:lower():sub(1,4) == "-pre" then
                execCmd("stun")
                wait(0.5)
                execCmd("noanim")
                wait(0.1)
                execCmd("unstun")
            end
            if player == host and message:lower():sub(1,9) == "-timefarm" then
                execCmd("float")
                wait(0.1)
                execCmd("jump")
                wait(0.5)
                execCmd("follow "..host)
            end
            if player == host and message:lower():sub(1,10) == "-funnyjump" then
                setfpscap(1)
                execCmd("jump")
                wait(10)
                setfpscap(60)
            end
            if player == host and message:lower():sub(1,9) == "-slowgoto" then
                execCmd("tspeed 30")
                execCmd("tgoto "..host)
            end
            if player == host and message:lower():sub(1,5) == "-host" then
                execCmd("say You've been provided with bot access, type -cmds for commands: "..message:sub(7))
                getgenv().host2 = message:sub(7)
            end
            if player == host and message:lower():sub(1,7) == "-repeat" then
                if message:sub(9) == "true" then
                    getgenv().chatrepeat = true
                elseif message:sub(9) == "false" then
                    getgenv().chatrepeat = false
                end
            end
            if player == host and message:lower():sub(1,7) == "-tohost" then
                execCmd("goto "..host)
            end
            if player == host and message:lower():sub(1,5) == "-cmds" then
                execCmd("say no")
            end
            if player == host and message:lower():sub(1,3) == "-iy" then
                execCmd(message:sub(5))
            end
            if player == host and message:lower():sub(1,9) == "-infyield" then
                execCmd(message:sub(11))
            end
            if player == host and message:lower():sub(1,9) == "-iy_admin" then
                execCmd(message:sub(11))
            end
            if player == host and message:lower():sub(1,8) == "-savecpu" then
                execCmd("norender")
                setfpscap(30)
            end
            if player == host and message:lower():sub(1,6) == "-reset" then
                execCmd("reset")
            end
            if player == host and message:lower():sub(1,4) == "-lua" then
                loadstring(message:sub(6))()
            end
            if player == host and message:lower():sub(1,5) == "-test" then
                execCmd("say whats 9+10")
                if message == "21" then
                    execCmd("u stuped")
                elseif message == "19" then
                    execCmd("ure smart!!")
                end
            end
            if player == host and message:lower():sub(1,5) == "-exit" then
                if exitbool then
                    execCmd("exit")
                elseif message:lower():sub(7) == "false" then
                    getgenv().exitbool = false
                else
                    execCmd("say say again to confirm or -exit false")
                    getgenv().exitbool = true
                end
            end
            if player == host and message:lower():sub(1,7) == "-follow" then
                execCmd("follow "..host)
            end
            if player == host and message:lower():sub(1,9) == "-unfollow" then
                execCmd("unfollow")
            end
            if player == host and message:lower():sub(1,3) == "-ls" then
                if message:lower():sub(5) == "atck" then
                    if message:lower():sub(10) == "true" then
                        getgenv().Attack = true
                        execCmd("equiptools")
                    elseif message:lower():sub(10) == "false" then
                        getgenv().Attack = false
                        execCmd("say delighted?")
                    end
                end
            end
            if player == host and message:lower():sub(1,3) == "-kp" then
                if message:lower():sub(5) == "farm" then
                    execCmd("noclip")
                    wait(0.3)
                    execCmd("loopgoto "..host.. " 6 0")
                elseif message:lower():sub(5) == "infect" then
                    execCmd("goto "..host)
                    wait(0.05)
                    execCmd("noclip")
                    wait(0.05)
                    local oldPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    execCmd("noclip")
                    wait(0.05)
                    for i=1,60 do
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.406143, -12.3250103, -424.536591)
                        wait(0.3)
                    end
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
                end
            end
            if player == host and message:lower():sub(1,8) == "-clantag" then
                game:GetService("ReplicatedStorage").Remote.ChangePlayerName:FireServer(message:sub(10))
            end
            ---------END------------
            --[[
                HOST2 DIRECTORY LOWER
            ]]--
            if player == host and message:lower():sub(1,7) == "-follow" then
                execCmd("follow "..host)
            end
            if player == host and message:lower():sub(1,9) == "-unfollow" then
                execCmd("unfollow")
            end 
            if player == host2 and message:lower():sub(1,4) == "-say" then
                execCmd("say "..message:sub(6))
            end
            if player == host2 and message:lower():sub(1,5) == "-host" then
                execCmd("say You've been provided with bot access, type -cmds for commands: "..message:sub(7))
                getgenv().host2 = message:sub(7)
            end
            if player == host2 and message:lower():sub(1,7) == "-tohost" then
                execCmd("goto "..host2)
            end
            if player == host2 and message:lower():sub(1,8) == "-clantag" then
                game:GetService("ReplicatedStorage").Remote.ChangePlayerName:FireServer(message:sub(10))
            end
            ------------------kaiju paradise
            if player == host2 and message:lower():sub(1,3) == "-kp" then
                if message:lower():sub(5) == "farm" then
                    execCmd("noclip")
                    wait(0.3)
                    execCmd("loopgoto "..host2.. " 6 0")
                elseif message:lower():sub(5) == "infect" then
                    execCmd("goto "..host2)
                    wait(0.05)
                    execCmd("noclip")
                    wait(0.05)
                    local oldPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    execCmd("noclip")
                    wait(0.05)
                    for i=1,60 do
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.406143, -12.3250103, -424.536591)
                        wait(0.3)
                    end
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
                end
            end
            -------------END---------------
            --THE function
            function Attack()
                spawn(function()
                    while getgenv().Attack == true do
                        game:GetService("ReplicatedStorage").Events.WeaponEvent:FireServer("Swing")
                    end
                end)
            end
            -----END-----
        end
    end)
end
print("exectued success")
else
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = game:GetService("CoreGui")
	notLoaded.Text = 'script running on host, gui will show up\nmade by swimdroid\nhttps://discord.gg/N4Rrn7rqU4'
	wait(5)
	notLoaded:Destroy()
end
