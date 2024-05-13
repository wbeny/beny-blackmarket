ESX.RegisterServerCallback('beny-blackmarket:checkHasEntryItem', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)    
    if xPlayer.getInventoryItem(Config.EntryItem).count > 0 then
        xPlayer.removeInventoryItem(Config.EntryItem, 1)
        cb(true)
    else
        xPlayer.showNotification("Nie możesz tego zrobić")
        cb(false)
    end
end)

function countMoney(source, price)
    local xPlayer = ESX.GetPlayerFromId(source)
    local black_money = xPlayer.getAccount('black_money').money
    local money = xPlayer.getAccount('money').money
    if money+black_money >= price then
        local moneytoremove = {}
        if black_money >= price then
            table.insert(moneytoremove, {
                item = 'black_money',
                count = black_money
            })
        else
            table.insert(moneytoremove, {
                item = 'black_money',
                count = black_money
            })
            table.insert(moneytoremove, {
                item = 'money',
                count = price-black_money
            })
        end
        return moneytoremove
    else
        return false
    end
end

ESX.RegisterServerCallback('beny-blackmarket:buyItems', function(source, cb, items, price)
    local xPlayer = ESX.GetPlayerFromId(source)   
    local money = countMoney(source, price) 
    if money then
        for k,v in ipairs(money) do
            xPlayer.removeAccountMoney(v.item, v.count)
        end
        for k,v in ipairs(items) do
            xPlayer.addInventoryItem(v.item, v.count)
        end
    else
        xPlayer.showNotification("Nie masz wystarczająco pieniędzy potrzebujesz $"..price)
    end
end)