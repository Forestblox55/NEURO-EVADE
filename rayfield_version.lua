-- load Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- create window
local Window = Rayfield:CreateWindow({
   Name = "Evade Ultra AI 🤖",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by you 😔",
   ConfigurationSaving = {
      Enabled = false
   }
})

-- tabs
local MainTab = Window:CreateTab("Main", 4483362458)
local PlayerTab = Window:CreateTab("Player", 4483362458)

-- toggle (AI ON/OFF)
local AIEnabled = false

MainTab:CreateToggle({
   Name = "Enable Ultra AI",
   CurrentValue = false,
   Callback = function(Value)
      AIEnabled = Value
      print("AI:", Value)
   end,
})

-- example button
MainTab:CreateButton({
   Name = "Test Print",
   Callback = function()
      print("Rayfield is working 😔")
   end,
})

-- player mod example
PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 100},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
