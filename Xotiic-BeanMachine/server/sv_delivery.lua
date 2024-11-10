local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

local src = source
local Player = QBCore.Functions.GetPlayer(src)
local totalfood = math.random(Config.MinFoodDrink, Config.MaxFoodDrink)

if Config.InventorySystem == 'ox' then
    RegisterNetEvent('Xotiic-BeanMachine:server:RecieveFood', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        ox_inventory:AddItem(src, 'bcocacola', totalfood)
        ox_inventory:AddItem(src, 'bchocolatemuffin', totalfood)
    end)

    RegisterNetEvent('Xotiic-BeanMachine:server:FinishDelivery', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
    
        ox_inventory:RemoveItem(src, 'bcocacola', totalfood, false)
        ox_inventory:RemoveItem(src, 'bchocolatemuffin', totalfood, false)
    end)
elseif Config.InventorySystem == 'qb' then
    RegisterNetEvent('Xotiic-BeanMachine:server:RecieveFood', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        
        exports['qb-inventory']:AddItem(src, 'bcocacola', totalfood, false, false)
        exports['qb-inventory']:AddItem(src, 'bchocolatemuffin', totalfood, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bcocacola'], 'add', totalfood)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bchocolatemuffin'], 'add', totalfood)
    end)

    RegisterNetEvent('Xotiic-BeanMachine:server:FinishDelivery', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
    
        exports['qb-inventory']:RemoveItem(src, 'bcocacola', totalbags, false)
        exports['qb-inventory']:RemoveItem(src, 'bchocolatemuffin', totalbags, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bchocolatemuffin'], 'remove')
    end)
end

RegisterNetEvent('Xotiic-BeanMachine:server:FinishDeliveryPay', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPay = math.random(Config.MinPay, Config.MaxPay) -- the amount you get inbetween the min and max set in config
    local PlayerPercent = Config.PlayerPercent -- setting the playerPercent to be whats in the config
    local playerTotal = totalPay*PlayerPercent/100 -- getting the % of the totalPay
    local businessTotal = playerTotal-totalPay -- getting the business amount after removing the playerPercent

    if Config.PayWorker == true then
        exports['qb-banking']:AddMoney('beanmachine', businessTotal, 'Delivery-Work')
        Player.Functions.AddMoney('bank', playerTotal, 'Delivery-Tip')
    elseif Config.PayWorker == false then
        exports['qb-banking']:AddMoney('beanmachine', businessTotal, 'Delivery-Tip')
    end
end)