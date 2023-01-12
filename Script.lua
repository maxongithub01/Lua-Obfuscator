local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "made by max", HidePremium = false, IntroEnabled = false, ConfigFolder = false})

OrionLib:MakeNotification({
	Name = "Logged in nice",
	Content = "u are logged in as "..Player.Name.." ",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "maxispro"
_G.KeyInput = "string"

function MakeScriptHub()
	local Window = OrionLib:MakeWindow({Name = "Script Hub", HidePremium = false,SaveConfig = true, IntroEnabled = false IntroText = , ConfigFolder = false})
end

function CorrectKeyNotification()
	OrionLib:MakeNotification({
		Name = "Correct Key",
		Content = "u have entered the correct key "..Player.Name.." ",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
end

function IncorrectKeyNotification()
	OrionLib:MakeNotification({
		Name = "Wrong Key",
		Content = "u have entered the incorrect key "..Player.Name.." ",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
end


local Tab = Window:MakeTab({
	Name = "key system",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
                MakeScriptHub()
				CorrectKeyNotification()
			else

				IncorrectKeyNotification()
            end
  	end    
})
