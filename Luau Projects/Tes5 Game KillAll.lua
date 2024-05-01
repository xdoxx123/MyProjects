local On = false
local localplr = game:GetService("Players").LocalPlayer
wait(1)
local Humanoid = localplr.Character:FindFirstChildOfClass("Humanoid")
wait()
game.StarterGui:SetCore("SendNotification",{
    
    Title = "Tes5 Game KillAll";
    Text = string.format("Say /start to start the script \n say /stop to stop it\n made with love by xdoxx123 ❤️❤️", "%q")
    
    
    
})





if game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    game.TextChatService.OnIncomingMessage=function(msg)
        if msg.Text == "/start" then
            print("oN")
            On = true
        end
        if msg.Text=="/stop" then
            On = false
        end
        
    end
else
    localplr.Chatted:Connect(function(msg)
        if msg == "/start" then
            On = true
        end
        if msg=="/stop" then
            On = false
        end
    end)
end







while On do
    
    if Humanoid then
        if localplr.Backpack:FindFirstChildOfClass("Tool") then
        Humanoid:EquipTool(localplr.Backpack:FindFirstChildOfClass("Tool"))
        end
    end
    
    
    
    for _,plr in ipairs(game:GetService("Players"):GetPlayers()) do
        if plr.Character then
            if plr == localplr or plr.Character:FindFirstChildOfClass("Humanoid").Health >= 0 then continue end
            repeat
                localplr.Character:FindFirstChild("HumanoidRootPart").CFrame = plr.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(1,0,0)
                localplr.Backpack:FindFirstChildOfClass("Tool"):Activate()
                wait(00.1)
                
            until plr.Character:FindFirstChildOfClass("Humanoid").Health <= 0
            
            
            
            
        end
        
        
        
    end
    
    wait()
end
