-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Galaxy Hub V2 | Rebirth Champions X",
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
		Note = "Join Discord For The Key",
		FileName = "GalaxyV2Key",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "Test"
	}
})

-- Galaxy Hub V2 Locales
local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").Scripts.Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

-- Galaxy Hub V2 Values
getgenv().GalaxyHubV2AutoClick = true
getgenv().GalaxyHubV2AutoSpinWheel = true
getgenv().GalaxyHubV2AutoRebirth = true
getgenv().GalaxyHubV2AutoDraw = true
getgenv().GalaxyHubV2AutoBuyPotions = true
getgenv().GalaxyHubV2AutoHatch = true
getgenv().GalaxyHubV2AutoCraft = true
getgenv().GalaxyHubV2WorldBoost = true
getgenv().GalaxyHubV2AutoCraft = true
getgenv().GalaxyHubV2AutoBuyPotionsAqua = true
getgenv().GalaxyHubV2SelectRebirths = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72
getgenv().GalaxyHubV2AmountOfPotions = 1, 10, 100

-- Galaxy Hub V2 Functions
function GalaxyHubV2AutoClick()
	while getgenv().GalaxyHubV2AutoClick == true do
        game:GetService("ReplicatedStorage").Events.Click3:FireServer()
		wait(.0001)
	 end
    end

function GalaxyHubV2AutoSpinWheel()
while getgenv().GalaxyHubV2AutoSpinWheel == true do
   game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
end
end

function GalaxyHubV2AutoRebirth()
	while getgenv().GalaxyHubV2AutoRebirth == true do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(getgenv().GalaxyHubV2SelectRebirths)
		wait(.0001)
	 end
	end

function GalaxyHubV2AutoDraw()
	while getgenv().GalaxyHubV2AutoDraw == true do
		game:GetService("ReplicatedStorage").Events.DestructionMachine:FireServer()
		wait(.0001)
	end
end

function GalaxyHubV2AutoHatch()
	while getgenv().GalaxyHubV2AutoHatch == true do
		game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(getgenv().GalaxyHubV2SelectEgg,"Triple")
		wait(.0001)
	 end
	end

function GalaxyHubV2AutoCraft()
	while getgenv().GalaxyHubV2AutoCraft == true do
		game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
		wait(.0001)
	 end
	end

function GalaxyHubV2WorldBoost()
	while getgenv().GalaxyHubV2WorldBoost == true do
		game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer("Pirate")
		wait(.0001)
	 end
	end

function GalaxyHubV2AutoCraft()
	while getgenv().GalaxyHubV2AutoCraft == true do
		game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
		wait(.0001)
	 end
	end

function GalaxyHubV2AutoBuyPotions()
	while getgenv().GalaxyHubV2AutoBuyPotions == true do
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Clicks", getgenv().GalaxyHubV2AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Gems", getgenv().GalaxyHubV2AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Luck", getgenv().GalaxyHubV2AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Rebirths", getgenv().GalaxyHubV2AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2PetXP", getgenv().GalaxyHubV2AmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2HatchSpeed", getgenv().GalaxyHubV2AmountOfPotions)
		wait(.0001)
	 end
	end

function GalaxyHubV2AutoBuyPotionsAqua()
while getgenv().GalaxyHubV2AutoBuyPotionsAqua == true do
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x3Clicks",getgenv().GalaxyHubV2AmountOfPotions,"aqua")
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x3Gems",getgenv().GalaxyHubV2AmountOfPotions,"aqua")
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Luck",getgenv().GalaxyHubV2AmountOfPotions,"aqua")
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x3Rebirths",getgenv().GalaxyHubV2AmountOfPotions,"aqua")
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2PetLevel",getgenv().GalaxyHubV2AmountOfPotions,"aqua")
   wait(.0001)
end
end


-- Galaxy Hub V2 Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Galaxy Hub V2 Updates")
local Label = HomeTab:CreateLabel("More Added Soon")

-- Galaxy Hub V2 Page 1
local AutoTab = Window:CreateTab("Auto Farm", 4400702457)

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Click",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().GalaxyHubV2AutoClick = Value
		GalaxyHubV2AutoClick()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "Toggle2",
	Callback = function(Value)
		getgenv().GalaxyHubV2AutoRebirth = Value
		GalaxyHubV2AutoRebirth()
	end,
})

local Dropdown = AutoTab:CreateDropdown({
	Name = "Select Rebirth",
	Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72},
	CurrentOption = "",
	Flag = "Dropdown1",
	Callback = function(Value)
		getgenv().GalaxyHubV2SelectRebirths = Value
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Spin Wheel",
	CurrentValue = false,
	Flag = "Toggle3",
	Callback = function(Value)
		getgenv().GalaxyHubV2AutoSpinWheel = Value
		GalaxyHubV2AutoSpinWheel()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Draw (Destruction Machine)",
	CurrentValue = false,
	Flag = "Toggle4",
	Callback = function(Value)
		getgenv().GalaxyHubV2AutoDraw = Value
		GalaxyHubV2AutoDraw()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Buy Boosts (Normal)",
	CurrentValue = false,
	Flag = "Toggle5",
	Callback = function(Value)
		getgenv().GalaxyHubV2AutoBuyPotions = Value
		GalaxyHubV2AutoBuyPotions()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Buy Boosts (Aqua)",
	CurrentValue = false,
	Flag = "Toggle8",
	Callback = function(Value)
		getgenv().GalaxyHubV2AutoBuyPotionsAqua = Value
		GalaxyHubV2AutoBuyPotionsAqua()
	end,
})

local Dropdown = AutoTab:CreateDropdown({
	Name = "Amount Of Boosts",
	Options = {1, 10, 100},
	CurrentOption = "",
	Flag = "Dropdown2",
	Callback = function(Value)
		getgenv().GalaxyHubV2AmountOfPotions = Value
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Redeem Chests",
	Callback = function(Value)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Spawn")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Beach")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Winter")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Nuclear")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Hell")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Space")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Galaxy")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Shadow")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Hacker")
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Redeem Codes",
	Callback = function(Value)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("moon")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("heaven")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("nuclear")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("thanksfor50k")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("void")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("spooky")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("75kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("cave")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("easter")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("100kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("easter2")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("steampunk")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("steampunk")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("hell")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("50m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("space")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("mars")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("alien")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("galactic")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("60m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("summer")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("150kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("kraken")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("lab")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("fantasy")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("75m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("neon")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("shadow")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("tutel")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("destruction")
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Best World Boost",
	Callback = function(Value)
		GalaxyHubV2WorldBoost()
	end,
})

-- Galaxy Hub V2 Page 2
local EggsTab = Window:CreateTab("Eggs", 4400700509)

local Toggle = EggsTab:CreateToggle({
	Name = "Auto Hatch",
	CurrentValue = false,
	Flag = "Toggle6",
	Callback = function(Value)
		getgenv().GalaxyHubV2AutoHatch = Value
		GalaxyHubV2AutoHatch()
	end,
})

local Dropdown = EggsTab:CreateDropdown({
	Name = "Select Egg",
	Options = Eggs_Table,
	CurrentOption = "",
	Flag = "Dropdown3",
	Callback = function(Value)
		getgenv().GalaxyHubV2SelectEgg = Value
	end,
})

local Toggle = EggsTab:CreateToggle({
	Name = "Auto Craft Pets",
	CurrentValue = false,
	Flag = "Toggle7",
	Callback = function(Value)
		getgenv().GalaxyHubV2AutoCraft = Value
		GalaxyHubV2AutoCraft()
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
local Label = SettingsTab:CreateLabel("Co-Owner: Nobody")
