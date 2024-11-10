local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then

    RegisterNetEvent('ox:beanTray1', function()
        ox_inventory:RegisterStash('beanTray1', 'stash', 75, 100000, true)
    end)

    RegisterNetEvent('ox:beanTray2', function()
        ox_inventory:RegisterStash('beanTray2', 'stash', 75, 100000, true)
    end)
    -- STORAGE --
    RegisterNetEvent('ox:beanstash', function()
        ox_inventory:RegisterStash('beanstash', 'Storage', 75, 1000000, true)
    end)
elseif Config.InventorySystem == 'qb' then

    RegisterNetEvent('Xotiic-BeanMachine:client:beanTray1', function(bfrontTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Tray'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 1000000,
                slots = 75,
            })
        end
    end)

    RegisterNetEvent('Xotiic-BeanMachine:client:beanstash', function(bfrontTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Stash'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 100000,
                slots = 75,
            })
        end
    end)

    RegisterNetEvent('Xotiic-BeanMachine:client:beanTray2', function(bfrontTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'Tray'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 100000,
                slots = 75,
            })
        end
    end)
end