local ESPFolder = Instance.new("Folder")
local Players = game:GetService("Players")
ESPFolder.Parent = game.CoreGui
ESPFolder.Name = math.random(1,1000)
local Camera = workspace.CurrentCamera
local Enabled = false
local Keybind = "E"

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "xdoxx123 simple esp";
	Text="Loaded!"
	
})

game:GetService("UserInputService").InputBegan:Connect(function(i)
	if i.KeyCode.Name == Keybind then
		Enabled = not Enabled
		
		
	end
end)


while Enabled do
	local function CreateESP(player)
		local Box = Instance.new("BoxHandleAdornment")
		Box.Parent = ESPFolder
		Box.Name = player.Name
		Box.Size = player.Character.HumanoidRootPart.Size + Vector3.new(5, 5, 5)
		Box.Color3 = Color3.new(0, 1, 0.0666667)
		Box.AlwaysOnTop = true
		Box.Transparency = 0.5
		Box.Adornee = player.Character.HumanoidRootPart
	end


	local function UpdateEsp()
		for _,player in ipairs(game.Players:GetPlayers()) do
			if  player.Character  then
				CreateESP(player)
			end
		end
		while wait(1) do
			ESPFolder:ClearAllChildren()
			UpdateEsp()
		end


	end
	wait()
end
