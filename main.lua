game.Players.LocalPlayer.CharacterAdded:Connect(function(chr)
    wait(1)
    for i,v in pairs(workspace:GetChildren()) do
        if v.ClassName == 'Model' then
            if v:FindFirstChild('BagTouchScript') then
                local type = v.Rarity.Value
                if table.find({'Ultimate','Resplendent'}, type) then
                    warn('ITS HAPPENING')
                    break
                end
            end
        end
    end
    game.Players.LocalPlayer.OnTeleport:Connect(function(s)
        if s == Enum.TeleportState.Started then
            syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/robodmanx/auto-bag-farm/main/main.lua'))()")
        end
    end)
    print('laa')
    game:GetService('TeleportService'):Teleport(game.PlaceId)
    print('lowl")
end)
