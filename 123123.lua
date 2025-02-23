local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

if game.PlaceId == 17720162456 then
wait(15)
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-383, 17, 2942)
    humanoid:MoveTo(Vector3.new(-358, 17, 2920))
wait(5)
    local args = {
        [1] = workspace.Teleporters.Teleporter6,
        [2] = 15,
        [3] = "Hellmode",
        [4] = false
    }
    game:GetService("ReplicatedStorage").Remotes.Teleporters.ChooseStage:FireServer(unpack(args))
else
    local realTimer = game:GetService("Workspace").Info.Time.RealTimer

    while true do
        local success, err = pcall(function()
            local currentValue = realTimer.Value
            print(currentValue)
            if currentValue > 250 and currentValue < 300 then
                local success250, err250 = pcall(function()
                    local args = {
                        [1] = game:GetService("Players").LocalPlayer.Equipped3.Value,
                        [2] = CFrame.new(50, 10, -141)
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
                end)
                if not success250 then warn("Ошибка в SpawnNewTower на 250: " .. err250) end
            end

            if currentValue == 25 then
                local success25, err25 = pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AutoSkip"):FireServer()
                end)
                if not success25 then warn("Ошибка в AutoSkip: " .. err25) end

                local successSpawn25, errSpawn25 = pcall(function()
                    local args = {
                        [1] = game:GetService("Players").LocalPlayer.Equipped2.Value,
                        [2] = CFrame.new(93, 10, -98)
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
                end)
                if not successSpawn25 then warn("Ошибка в SpawnNewTower на 25: " .. errSpawn25) end
            end

            if currentValue > 40 and currentValue < 300 then
                local success100, err100 = pcall(function()
                    local args = {
                        [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                        [2] = CFrame.new(93, 10, -98)
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
                    end)
                    local success100, err100 = pcall(function()
                    local args = {
                        [1] = workspace.Towers.SorcererAgent
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end)
                    local success100, err100 = pcall(function()
                    local args = {
                        [1] = workspace.Towers.SorcererAgent2
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end)
                    local success100, err100 = pcall(function()
                    local args = {
                        [1] = workspace.Towers.SorcererAgent3
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end)
            end

            if currentValue > 300 and currentValue < 350 then
            local success = pcall(function()
                local args = {
                    [1] = workspace.Towers.SorcererAgent4
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                end)
            end

            if currentValue > 360 and currentValue < 420 then
                local success = pcall(function()
                local args = {
                    [1] = workspace.Towers.KingOfCurses
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end)
            end

            if currentValue > 370 and currentValue < 480 then
            local success = pcall(function()
                local args = {
                    [1] = workspace.Towers.SorcererAgent4
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end)
            end
            if currentValue > 420 and currentValue < 500 then
            local success = pcall(function()
                local args = {
                    [1] = workspace.Towers.KingOfCurses2
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end)
            end

            if currentValue > 520 and currentValue < 600 then
            local success = pcall(function()
                local args = {
                    [1] = workspace.Towers.KingOfCurses3
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end)
            end

            if currentValue > 550 and currentValue < 650 then
            local success = pcall(function()
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped4.Value,
                    [2] = CFrame.new(50, 10, -127)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
                local success = pcall(function()
                local args = {
                    [1] = workspace.Towers.AmplifyingSorcerer
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                end)
                local args = {
                    [1] = workspace.Towers.AmplifyingSorcerer2
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end)
            end

            if currentValue > 720 and currentValue < 800 then
                local success = pcall(function()
                    local args = {
                        [1] = workspace.Towers.KingOfCurses4
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                end)
            end

            if currentValue > 880 and currentValue < 1000 then
                local success = pcall(function()
                    local args = {
                        [1] = workspace.Towers.KingOfCurses5
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                end)
            end
             if player.PlayerGui.GameGui.Info.Message.Text == "VICTORY" then
                game:GetService("ReplicatedStorage").Events.Replay:FireServer()
                if game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Rewards.DroppedTower.Visible == false then
                    local url = "https://discord.com/api/webhooks/1343258734272708650/upZ47vT-KWPhbJWOA8gfqMttPfjrv2eydwGz0x5pacqWhbed6dX3n-CIYtuQpVU1OlIU"
                    local data = {["content"] = "15 Hellmode пройден за время: ".. game:GetService("Workspace").Info.Time.Timer.Value .. "\n Account: " .. character.Name}
                    local newdata = game:GetService("HttpService"):JSONEncode(data)
                    local headers = {["content-type"] = "application/json"}
                    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                    request(abcdef)
                else
                    local url = "https://discord.com/api/webhooks/1340016275451150346/8D17e1lcb3KBlTyRMofVhBS4A6sVksqzp0XGSvqMuhUsLV9c7r_gKObxClnd5PnTuV6j"
                    local data = {["content"] = "@everyone МЕГУМИ! 15 Hellmode пройден за время: ".. game:GetService("Workspace").Info.Time.Timer.Value .. "\n Account: " .. character.Name}
                    local newdata = game:GetService("HttpService"):JSONEncode(data)
                    local headers = {["content-type"] = "application/json"}
                    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                    request(abcdef)
                end
            end
        end)
        if player.PlayerGui.GameGui.Info.Message.Text == "VICTORY" then
                break
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Content.Title.Text == "GAME OVER" and game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Visible then
            local url = "https://discord.com/api/webhooks/1343258734272708650/upZ47vT-KWPhbJWOA8gfqMttPfjrv2eydwGz0x5pacqWhbed6dX3n-CIYtuQpVU1OlIU"
                    local data = {["content"] = "15 Hellmode не пройден, время: ".. game:GetService("Workspace").Info.Time.Timer.Value .. "\n Account: " .. character.Name}
                    local newdata = game:GetService("HttpService"):JSONEncode(data)
                    local headers = {["content-type"] = "application/json"}
                    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                    request(abcdef)
            wait(5)
            game:GetService("ReplicatedStorage").Events.Replay:FireServer()
            break
        end
        if not success then
            warn("Ошибка: " .. err)
        end
        wait(1)
    end
end
