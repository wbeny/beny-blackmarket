local isInBlackMarket = false

CreateThread(function()
    exports.ox_target:addBoxZone({
        name = "beny-blackmarket:entry",
        coords = Config.EntryTarget.coords,
        size = Config.EntryTarget.size,
        rotation = Config.EntryTarget.rotation,
        options = {
            {
                label = "Wejdź",
                icon = 'fas fa-door-closed',
                distance = 2.0,
                onSelect = function()
                    entryBlackMarket()
                end
            }
        }
    })

    exports.ox_target:addBoxZone({
        name = "beny-blackmarket:leave",
        coords = Config.LeaveTarget.coords,
        size = Config.LeaveTarget.size,
        rotation = Config.LeaveTarget.rotation,
        options = {
            {
                label = "Wyjdź",
                icon = 'fas fa-door-closed',
                distance = 2.0,
                onSelect = function()
                    leaveBlackMarket()
                end
            }
        }
    })
     
    for k,v in ipairs(Config.BuyItems) do
        local opt = {}
        for optk,optv in ipairs(v.options) do
            table.insert(opt, {
                label = optv.label,
                icon = 'fas fa-money-bill',
                distance = 2.0,
                onSelect = function()
                    buyProduct(optv.items, optv.price)
                end
            })
        end

        exports.ox_target:addBoxZone({
            name = "beny-blackmarket:buyProduct-"..k,
            coords = v.coords,
            size = v.size,
            rotation = v.rotation,
            options = opt
        })
end
end)

function leaveBlackMarket()
    local ped = PlayerPedId()
    DoScreenFadeOut(500)
    Wait(750)
    ESX.Game.Teleport(ped, Config.LeaveCoords, function()
        isInBlackMarket = false
        DoScreenFadeIn(500)
    end)
end

function entryBlackMarket()
    ESX.TriggerServerCallback("beny-blackmarket:checkHasEntryItem", function(hasEntryItem) 
        if hasEntryItem then
            local ped = PlayerPedId()
            DoScreenFadeOut(500)
            Wait(750)
            ESX.Game.Teleport(ped, Config.EntryCoords, function()
                isInBlackMarket = true
                DoScreenFadeIn(500)
            end)
        end        
    end)
end

function buyProduct(items, price)
    if isInBlackMarket then
        ESX.TriggerServerCallback("beny-blackmarket:buyItems", nil, items, price)
    else
        ESX.ShowNotification("Nie możesz tego zrobić!")
    end
end