local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "NEURO-EVADE 🤖",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "mobile optimized 😔",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false
})

-- MOBILE FRIENDLY TAB
local MainTab = Window:CreateTab("Main", 4483362458)

-- TOGGLE
local AIEnabled = false

MainTab:CreateToggle({
   Name = "Enable AI",
   CurrentValue = false,
   Callback = function(Value)
      AIEnabled = Value
   end,
})

-- DEBUG BUTTON
MainTab:CreateButton({
   Name = "Test",
   Callback = function()
      print("working 😔")
   end,
})
