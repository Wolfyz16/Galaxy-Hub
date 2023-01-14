-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Galaxy Hub V2 | Prison Life",
	LoadingTitle = "Galaxy Hub",
	LoadingSubtitle = "By Wolfyz",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "Galaxy Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "zUZsj8CeyS",
        	RememberJoins = true
        },
	KeySystem = true,
	KeySettings = {
		Title = "Galaxy Hub",
		Subtitle = "Key System",
		Note = "Join The Discord (discord.gg/zUZsj8CeyS)",
		FileName = "GalaxyV2Key",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "GHV2_Wolfyz"
	}
})

-- Galaxy Hub V2 Player Settings
local plyr = game:GetService("Players").LocalPlayer
getgenv().GalaxyHubV2Noclip = false

-- Galaxy Hub V2 Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Galaxy Hub V2")
local Label = HomeTab:CreateLabel("The Best Script Ever")

-- Galaxy Hub V2 Page 1
local PlayerTab = Window:CreateTab("Player", 6961018885)

local Dropdown = PlayerTab:CreateDropdown({
	Name = "Teleports",
	Options = {"Criminal Base", "Down Town", "Entrance", "Gate Entrance", "Yard", "Hallway", "Cell Block", "Cafeteria", "Armory", "Guards Only"},
	CurrentOption = "",
	Flag = "Dropdown1",
	Callback = function(V)
        if V == "Criminal Base" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-859.15161132813, 94.476051330566, 2058.5427246094)
            wait(1)
        elseif V == "Down Town" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-300.44033813477, 54.175037384033, 1781.2364501953)
            wait(1)
        elseif V == "Entrance" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(653.81713867188, 99.990005493164, 2272.083984375)
            wait(1)
        elseif V == "Gate Entrance" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(491.27182006836, 98.039939880371, 2216.3107910156)
            wait(1)
        elseif V == "Yard" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(781.6845703125, 97.999946594238, 2462.8779296875)
            wait(1)
        elseif V == "Hallway" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(860.78448486328, 99.990005493164, 2362.9597167969)
			wait(1)
		elseif V == "Cell Block" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.43115234375, 99.989990234375, 2440.3828125)
			wait(1)
		elseif V == "Cafeteria" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(932.06213378906, 99.989959716797, 2290.4250488281)
			wait(1)
		elseif V == "Armory" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.28918457031, 99.990005493164, 2285.4909667969)
			wait(1)
		elseif V == "Guards Only" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(830.04302978516, 99.990005493164, 2327.0859375)
        end
	end,
})


local Toggle = PlayerTab:CreateToggle({
	Name = "Noclip",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().GalaxyHubV2Noclip = Value
		if getgenv().GalaxyHubV2Noclip then
			noclip()
		end
	function noclip()
		game:GetService("RunService").Stepped:Connect(function()
			if getgenv().GalaxyHubV2Noclip == true then
				for i,v in pairs(plyr.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
			end
		end)
	end 
	end,
})

local Slider = PlayerTab:CreateSlider({
	Name = "Player Speed",
	Range = {0, 1000},
	Increment = 8,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "Slider1",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Slider = PlayerTab:CreateSlider({
	Name = "Jump Power",
	Range = {0, 500},
	Increment = 10,
	Suffix = "Jump Power",
	CurrentValue = 50,
	Flag = "Slider2",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})

-- Galaxy Hub V2 Page 2
local MiscTab = Window:CreateTab("Misc", 3610254425)

local Button = MiscTab:CreateButton({
	Name = "Get All Items",
	Callback = function()
        for i,v in pairs(game.Workspace.Prison_ITEMS.single:GetChildren()) do
            if v:FindFirstChild("ITEMPICKUP") then
                game.Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
            end
        end
        
        for i,v in pairs(game.Workspace.Prison_ITEMS.giver:GetChildren()) do
            if v:FindFirstChild("ITEMPICKUP") then
                game.Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
            end
        end
	end,
})

local Dropdown = MiscTab:CreateDropdown({
	Name = "Change Team",
	Options = {"Criminal","Neutral","Guard","Inmate"},
	CurrentOption = "",
	Flag = "Dropdown2",
	Callback = function(V)
		if V == "Criminal" then
            local weld02 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
    		wait(1)
    		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(weld02)
        elseif V == "Inmate" then
            game.Workspace.Remote.TeamEvent:FireServer("Bright orange")
        elseif V == "Guard" then
            game.Workspace.Remote.TeamEvent:FireServer("Bright blue")
        elseif V == "Neutral" then
            game.Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
        end
	end,
})

-- Galaxy Hub V2 Settings
local SettingsTab = Window:CreateTab("Settings", 9753762469)

local Button = SettingsTab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})

local Label = SettingsTab:CreateLabel("Owner: Wolfyz#5597")
