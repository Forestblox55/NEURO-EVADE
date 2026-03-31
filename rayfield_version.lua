local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")

task.spawn(function()
    while true do
        task.wait(0.1)  -- mobile-safe delay

        if AIEnabled and Humanoid and LocalPlayer.Character then
            pcall(function()
                -- Find closest target (example: revivable player)
                local closestPlayer = nil
                local shortestDist = math.huge
                for _, plr in pairs(Players:GetPlayers()) do
                    if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                        local dist = (plr.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if dist < shortestDist then
                            shortestDist = dist
                            closestPlayer = plr
                        end
                    end
                end

                -- Move toward target if found
                if closestPlayer then
                    Humanoid:MoveTo(closestPlayer.Character.HumanoidRootPart.Position)
                else
                    -- wander randomly if no target
                    local root = LocalPlayer.Character.HumanoidRootPart
                    local offset = Vector3.new(math.random(-10,10),0,math.random(-10,10))
                    Humanoid:MoveTo(root.Position + offset)
                end
            end)
        end
    end
end)
